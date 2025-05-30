// Include necessary headers
// #include <mpblas__Float128.h>
#include <mplapack__Float128.h>
#include <iostream>
#include <fstream>
#include <stdio.h>
#include <cstring>
#include <algorithm>
#include <sys/stat.h> // For mkdir
#include <unistd.h>   // For access()
#include <omp.h>      // For OpenMP
#include <chrono>     // For timing
#include <quadmath.h> // For quadmath functions

int main()
{
    const mplapackint n = 3000;
    const int num_matrices = 1000;
    const int num_threads = 32;
    const char base_dir[] = "data_3000_1000/matrix";
    mplapackint info;

    // Create output directory if it doesn't exist
    struct stat st = {0};
    char output_dir[512];
    snprintf(output_dir, sizeof(output_dir), "%s/X_mplapack", base_dir);

    if (stat(output_dir, &st) == -1) {
        mkdir(output_dir, 0700);
    }

    omp_set_num_threads(num_threads);

    // Start timing
    double start_time = omp_get_wtime();
    double start_cpu_time = clock();

    // Parallelize the loop using OpenMP
    #pragma omp parallel for schedule(dynamic)
    for (int i = 0; i < num_matrices; i++) {
        // Start timing for this iteration
        double matrix_start_time = omp_get_wtime();

        // Allocate arrays for MPLAPACK computations
        _Float128 *a = new _Float128[n * n];
        _Float128 *b = new _Float128[n];
        mplapackint *ipiv = new mplapackint[n];

        // Temporary arrays for reading and writing double-precision data
        double *a_temp = new double[n * n];
        double *b_temp = new double[n];
        double *x_temp = new double[n];

        // Build file names
        char a_filename[256];
        char b_filename[256];
        char x_filename[256];
        snprintf(a_filename, sizeof(a_filename), "%s/A_B/A_%d.bin", base_dir, i);
        snprintf(b_filename, sizeof(b_filename), "%s/A_B/B_%d.bin", base_dir, i);
        snprintf(x_filename, sizeof(x_filename), "%s/X_%d.bin", output_dir, i);

        // Open files for reading
        std::ifstream a_file(a_filename, std::ios::in | std::ios::binary);
        std::ifstream b_file(b_filename, std::ios::in | std::ios::binary);

        if (!a_file) {
            #pragma omp critical
            {
                std::cerr << "Cannot open file " << a_filename << std::endl;
            }
            continue;
        }
        if (!b_file) {
            #pragma omp critical
            {
                std::cerr << "Cannot open file " << b_filename << std::endl;
            }
            a_file.close();
            continue;
        }

        // Read data into temporary arrays
        a_file.read(reinterpret_cast<char*>(a_temp), n * n * sizeof(double));
        b_file.read(reinterpret_cast<char*>(b_temp), n * sizeof(double));

        // Check if read operations were successful
        if (!a_file) {
            #pragma omp critical
            {
                std::cerr << "Error reading from file " << a_filename << std::endl;
            }
            a_file.close();
            b_file.close();
            continue;
        }
        if (!b_file) {
            #pragma omp critical
            {
                std::cerr << "Error reading from file " << b_filename << std::endl;
            }
            a_file.close();
            b_file.close();
            continue;
        }

        // Close input files
        a_file.close();
        b_file.close();

        // Convert data to _Float128
        // for (mplapackint j = 0; j < n * n; j++) {
        //     a[j] = a_temp[j];
        // }

        // Convert data to _Float128 and transpose the matrix
        for (mplapackint row = 0; row < n; row++) {
            for (mplapackint col = 0; col < n; col++) {
                // Transpose while assigning
                a[row + col * n] = static_cast<_Float128>(a_temp[row * n + col]);
            }
        }

        for (mplapackint j = 0; j < n; j++) {
            b[j] = b_temp[j];
        }

        // Solve linear system
        Rgesv(n, (mplapackint)1, a, n, ipiv, b, n, info);

        if (info != 0) {
            #pragma omp critical
            {
                std::cerr << "Rgesv failed with info = " << info << " for matrix " << i << std::endl;
            }
            continue;
        }

        // Convert solution to double for writing
        for (mplapackint j = 0; j < n; j++) {
            char buf[1024];
            // Use strfromf128 to convert _Float128 to string
            if (strfromf128(buf, sizeof(buf), "%.35e", b[j]) == 0) {
                #pragma omp critical
                {
                    std::cerr << "strfromf128 failed for element " << j << " in matrix " << i << std::endl;
                }
                continue;
            }
            // Use strtod to convert string to double
            x_temp[j] = strtod(buf, NULL);
        }

        // Open file for writing solution
        std::ofstream x_file(x_filename, std::ios::out | std::ios::binary);
        if (!x_file) {
            #pragma omp critical
            {
                std::cerr << "Cannot open file " << x_filename << " for writing." << std::endl;
            }
            continue;
        }

        // Write solution to file
        x_file.write(reinterpret_cast<char*>(x_temp), n * sizeof(double));

        // Check if write operation was successful
        if (!x_file) {
            #pragma omp critical
            {
                std::cerr << "Error writing to file " << x_filename << std::endl;
            }
            x_file.close();
            continue;
        }

        // Close output file
        x_file.close();

        // End timing for this iteration
        double matrix_end_time = omp_get_wtime();
        double matrix_wall_time = matrix_end_time - matrix_start_time;

        // Optionally print progress with timing
        #pragma omp critical
        {
            std::cout << "Processed matrix " << i << " by thread " << omp_get_thread_num() 
                    << " in " << matrix_wall_time << " seconds." << std::endl;
        }
        
        // Free allocated memory for this iteration
        delete[] x_temp;
        delete[] b_temp;
        delete[] a_temp;
        delete[] ipiv;
        delete[] b;
        delete[] a;
    }

    // End timing
    double end_time = omp_get_wtime();
    double end_cpu_time = clock();

    double wall_time = end_time - start_time;
    double cpu_time = (end_cpu_time - start_cpu_time) / CLOCKS_PER_SEC;

    std::cout << "Total Wall Time: " << wall_time << " seconds" << std::endl;
    std::cout << "Total CPU Time: " << cpu_time << " seconds" << std::endl;

    return 0;
}
