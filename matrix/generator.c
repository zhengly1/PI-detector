#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include <time.h>
#include <omp.h>
#include <lapacke.h>
#include <sys/stat.h>
#include <sys/types.h>

// Define constants
#define SIZE 3000
#define NUM_MATRICES 1000
#define NUM_THREADS 32

// Function to generate a random matrix of size n x n
void generate_random_matrix(double *A, int n, unsigned int *seed) {
    for (int i = 0; i < n * n; i++) {
        A[i] = rand_r(seed) / (double)RAND_MAX;
    }
}

// Function to generate a random vector of size n
void generate_random_vector(double *B, int n, unsigned int *seed) {
    for (int i = 0; i < n; i++) {
        B[i] = rand_r(seed) / (double)RAND_MAX;
    }
}

void make_nearly_singular(double *A, int n, unsigned int *seed) {
    // 随机选择一行作为目标行
    int target_row_idx = rand_r(seed) % n;

    // 随机选择另一行用于线性组合
    int source_row_idx = rand_r(seed) % n;

    // 将目标行设置为与源行相同
    for (int j = 0; j < n; j++) {
        A[target_row_idx * n + j] = A[source_row_idx * n + j];
    }

    // 添加随机扰动
    // double noise_strength = 1e-3 + (rand_r(seed) / (double)RAND_MAX) * (1e-2 - 1e-3);
    double noise_strength = 1e-6;
    for (int j = 0; j < n; j++) {
        // A[target_row_idx * n + j] += noise_strength * (rand_r(seed) / (double)RAND_MAX);
        A[target_row_idx * n + j] += noise_strength;
    }
}


// Function to compute the condition number of a matrix
double compute_condition_number(double *A_orig, int n) {
    int info;
    int *ipiv = (int *)malloc(n * sizeof(int));

    // Make a copy of A
    double *A = (double *)malloc(n * n * sizeof(double));
    for (int i = 0; i < n * n; i++) {
        A[i] = A_orig[i];
    }

    // Compute the 1-norm of A
    double anorm = LAPACKE_dlange(LAPACK_ROW_MAJOR, '1', n, n, A, n);

    // Compute the LU factorization of A
    info = LAPACKE_dgetrf(LAPACK_ROW_MAJOR, n, n, A, n, ipiv);
    if (info != 0) {
        fprintf(stderr, "Error in dgetrf: info = %d\n", info);
        exit(1);
    }

    double rcond;

    // Compute the condition number
    info = LAPACKE_dgecon(LAPACK_ROW_MAJOR, '1', n, A, n, anorm, &rcond);
    if (info != 0) {
        fprintf(stderr, "Error in dgecon: info = %d\n", info);
        exit(1);
    }

    double cond = 1.0 / rcond;

    free(ipiv);
    free(A);

    return cond;
}

// Function to save a matrix to a binary file
void save_matrix(const char *filename, double *A, int n) {
    FILE *fp = fopen(filename, "wb");
    if (!fp) {
        fprintf(stderr, "Error opening file %s for writing\n", filename);
        exit(1);
    }
    fwrite(A, sizeof(double), n * n, fp);
    fclose(fp);
}

// Function to save a vector to a binary file
void save_vector(const char *filename, double *B, int n) {
    FILE *fp = fopen(filename, "wb");
    if (!fp) {
        fprintf(stderr, "Error opening file %s for writing\n", filename);
        exit(1);
    }
    fwrite(B, sizeof(double), n, fp);
    fclose(fp);
}

// Function to generate A, B, calculate condition number, and save the results
double generate_A_and_B_and_save(int size, int idx, int nearly_singular, unsigned int *seed) {
    double *A = (double *)malloc(size * size * sizeof(double));
    double *B = (double *)malloc(size * sizeof(double));

    generate_random_matrix(A, size, seed);
    generate_random_vector(B, size, seed);

    if (nearly_singular) {
        make_nearly_singular(A, size, seed);
    }

    // Compute the condition number of matrix A
    double condition_number = compute_condition_number(A, size);

    // Save A and B to files
    char A_filename[256];
    char B_filename[256];

    sprintf(A_filename, "A_B/A_%d.bin", idx);
    sprintf(B_filename, "A_B/B_%d.bin", idx);

    save_matrix(A_filename, A, size);
    save_vector(B_filename, B, size);

    free(A);
    free(B);

    return condition_number;
}

// Comparison function for qsort
int compare_doubles(const void *a, const void *b) {
    double diff = *(double *)a - *(double *)b;
    if (diff < 0)
        return -1;
    else if (diff > 0)
        return 1;
    else
        return 0;
}

// Main function
int main() {
    int size = SIZE;
    int num_matrices = NUM_MATRICES;
    clock_t start_cpu, end_cpu;
    double start_wall, end_wall;
    double total_cpu_time = 0;
    double total_wall_time = 0;

    // Create results directory if it doesn't exist
    struct stat st = {0};
    if (stat("A_B", &st) == -1) {
        mkdir("A_B", 0700);
    }

    // Initialize random number generator
    srand(time(NULL));

    double *condition_numbers = (double *)malloc(num_matrices * sizeof(double));

    // Generate nearly_singular flags before parallel region
    int *nearly_singular_flags = (int *)malloc(num_matrices * sizeof(int));
    for (int i = 0; i < num_matrices; i++) {
        nearly_singular_flags[i] = (rand() % 2 == 0); // 50% chance
    }

    omp_set_num_threads(NUM_THREADS);

    // Start timing
    start_cpu = clock();  // Start CPU time
    start_wall = omp_get_wtime();  // Start wall clock time
    #pragma omp parallel
    {
        unsigned int seed = (unsigned int)time(NULL) + omp_get_thread_num();

        #pragma omp for schedule(dynamic)
        for (int i = 0; i < num_matrices; i++) {
            double cond_num = generate_A_and_B_and_save(size, i, nearly_singular_flags[i], &seed);
            condition_numbers[i] = cond_num;
        }
    }

    end_cpu = clock();  // End CPU time
    end_wall = omp_get_wtime();  // End wall clock time
    double cpu_time_taken = ((double)(end_cpu - start_cpu)) / CLOCKS_PER_SEC;
    double wall_time_taken = end_wall - start_wall;
    printf("Finished %d matrices in %.6f CPU seconds and %.6f wall seconds\n", num_matrices, cpu_time_taken, wall_time_taken);

    // Save condition numbers to file
    FILE *fp = fopen("condition_numbers.txt", "w");
    if (!fp) {
        fprintf(stderr, "Error opening file for writing condition numbers\n");
        exit(1);
    }
    for (int i = 0; i < num_matrices; i++) {
        fprintf(fp, "%f\n", condition_numbers[i]);
    }
    fclose(fp);

    free(condition_numbers);
    free(nearly_singular_flags);

    return 0;
}
