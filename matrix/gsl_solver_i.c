#include <stdio.h>
#include <stdlib.h>
#include <sys/stat.h>   // For mkdir
#include <sys/types.h>  // For mode_t
#include <string.h>     // For strcpy, strcat
#include <errno.h>      // For errno
#include <gsl/gsl_matrix.h>
#include <gsl/gsl_vector.h>
#include <gsl/gsl_linalg.h>
#include <omp.h>        // For OpenMP
#include <time.h>

#define N 3000           // Matrix and vector size
#define NUM_FILES 1000     // Number of matrices/vectors
#define MATRIX_FOLDER "data_3000_1000/matrix"
#define OUTPUT_FOLDER "data_3000_1000/matrix/X_gsl_i"
#define NUM_THREADS 16

int main() {
    int idx;
    char a_filename[256], b_filename[256], x_filename[256];
    struct stat st = {0};

    // Create output directory if it doesn't exist
    if (stat(OUTPUT_FOLDER, &st) == -1) {
        if (mkdir(OUTPUT_FOLDER, 0700) != 0) {
            fprintf(stderr, "Error creating directory '%s': %s\n", OUTPUT_FOLDER, strerror(errno));
            return EXIT_FAILURE;
        }
    }

    // Set the number of threads (optional)
    omp_set_num_threads(NUM_THREADS);

    // Start timing
    double start_cpu = clock();
    double start_wall = omp_get_wtime();

    // Parallelize the loop over idx
    #pragma omp parallel for schedule(dynamic) private(idx, a_filename, b_filename, x_filename)
    for (idx = 0; idx < NUM_FILES; ++idx) {
    // for (idx = 1; idx < 2; ++idx) {

        // Allocate memory for GSL objects inside the loop for thread safety
        gsl_matrix *A = gsl_matrix_alloc(N, N);
        gsl_vector *B = gsl_vector_alloc(N);
        gsl_vector *X = gsl_vector_alloc(N);
        gsl_permutation *p = gsl_permutation_alloc(N);
        int signum;

        if (!A || !B || !X || !p) {
            fprintf(stderr, "Memory allocation failed in thread %d.\n", omp_get_thread_num());
            continue; // Skip this iteration
        }

        // Construct file paths
        snprintf(a_filename, sizeof(a_filename), "%s/A_B/A_%d.bin", MATRIX_FOLDER, idx);
        snprintf(b_filename, sizeof(b_filename), "%s/A_B/B_%d.bin", MATRIX_FOLDER, idx);
        snprintf(x_filename, sizeof(x_filename), "%s/X_%d.bin", OUTPUT_FOLDER, idx);

        // Open binary files for reading
        FILE *a_file = fopen(a_filename, "rb");
        if (!a_file) {
            fprintf(stderr, "Failed to open file '%s' in thread %d\n", a_filename, omp_get_thread_num());
            // Free allocated memory
            gsl_matrix_free(A);
            gsl_vector_free(B);
            gsl_vector_free(X);
            gsl_permutation_free(p);
            continue; // Skip this iteration
        }

        FILE *b_file = fopen(b_filename, "rb");
        if (!b_file) {
            fprintf(stderr, "Failed to open file '%s' in thread %d\n", b_filename, omp_get_thread_num());
            fclose(a_file);
            // Free allocated memory
            gsl_matrix_free(A);
            gsl_vector_free(B);
            gsl_vector_free(X);
            gsl_permutation_free(p);
            continue; // Skip this iteration
        }

        // Read matrix A from binary file directly into GSL matrix data block
        size_t read_elements = fread(A->data, sizeof(double), N * N, a_file);
        fclose(a_file);
        if (read_elements != N * N) {
            fprintf(stderr, "Error reading matrix A from file '%s' in thread %d\n", a_filename, omp_get_thread_num());
            fclose(b_file);
            // Free allocated memory
            gsl_matrix_free(A);
            gsl_vector_free(B);
            gsl_vector_free(X);
            gsl_permutation_free(p);
            continue; // Skip this iteration
        }

        // Read vector B from binary file directly into GSL vector data block
        read_elements = fread(B->data, sizeof(double), N, b_file);
        fclose(b_file);
        if (read_elements != N) {
            fprintf(stderr, "Error reading vector B from file '%s' in thread %d\n", b_filename, omp_get_thread_num());
            // Free allocated memory
            gsl_matrix_free(A);
            gsl_vector_free(B);
            gsl_vector_free(X);
            gsl_permutation_free(p);
            continue; // Skip this iteration
        }

        // Start timing for this iteration
        double matrix_start_time = omp_get_wtime();

        // Perform LU decomposition of A
        if (gsl_linalg_LU_decomp(A, p, &signum) != 0) {
            fprintf(stderr, "LU decomposition failed for idx = %d in thread %d\n", idx, omp_get_thread_num());
            // Free allocated memory
            gsl_matrix_free(A);
            gsl_vector_free(B);
            gsl_vector_free(X);
            gsl_permutation_free(p);
            continue; // Skip this iteration
        }

        // Solve the system A * X = B
        if (gsl_linalg_LU_solve(A, p, B, X) != 0) {
            fprintf(stderr, "Solving linear system failed for idx = %d in thread %d\n", idx, omp_get_thread_num());
            // Free allocated memory
            gsl_matrix_free(A);
            gsl_vector_free(B);
            gsl_vector_free(X);
            gsl_permutation_free(p);
            continue; // Skip this iteration
        }

        // End timing for this iteration
        double matrix_end_time = omp_get_wtime();
        double matrix_wall_time = matrix_end_time - matrix_start_time;

        // Write solution vector X to binary file
        FILE *x_file = fopen(x_filename, "wb");
        if (!x_file) {
            fprintf(stderr, "Failed to open file '%s' for writing in thread %d\n", x_filename, omp_get_thread_num());
            // Free allocated memory
            gsl_matrix_free(A);
            gsl_vector_free(B);
            gsl_vector_free(X);
            gsl_permutation_free(p);
            continue; // Skip this iteration
        }

        size_t written_elements = fwrite(X->data, sizeof(double), N, x_file);
        fclose(x_file);
        if (written_elements != N) {
            fprintf(stderr, "Error writing vector X to file '%s' in thread %d\n", x_filename, omp_get_thread_num());
            // Free allocated memory
            gsl_matrix_free(A);
            gsl_vector_free(B);
            gsl_vector_free(X);
            gsl_permutation_free(p);
            continue; // Skip this iteration
        }

        // Free allocated memory
        gsl_matrix_free(A);
        gsl_vector_free(B);
        gsl_vector_free(X);
        gsl_permutation_free(p);

        // Optional: Print progress
        #pragma omp critical
        {
            printf("Processed matrix %d by thread %d in %f seconds.\n", idx, omp_get_thread_num(), matrix_wall_time);
        }
    }

    // End timing
    double end_cpu = clock();
    double end_wall = omp_get_wtime();
    double cpu_time_taken = ((double)(end_cpu - start_cpu)) / CLOCKS_PER_SEC;
    double wall_time_taken = end_wall - start_wall;
    printf("Completed in %.6f CPU seconds and %.6f wall seconds\n", cpu_time_taken, wall_time_taken);
    return EXIT_SUCCESS;
}
