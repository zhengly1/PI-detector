# Compiler and flags
CC = gcc
CXX = g++
CFLAGS = -fopenmp
LIBS = -lmpfr -lgmp -llapacke -llapack

# Targets
all: generator gsl_solver gsl_solver_i

# Ensure bin directory exists
bin:
	mkdir -p bin

# Build generator
generator: generator.c bin
	$(CC) -o bin/generator generator.c $(LIBS) $(CFLAGS)

# Build gsl_solver
gsl_solver: gsl_solver.c bin
	$(CC) -o bin/gsl_solver gsl_solver.c -lgsl -lgslcblas -lm -lstdc++ $(CFLAGS)
	
# Build gsl_solver_i
gsl_solver_i: gsl_solver.c bin
	$(CC) -o bin/gsl_solver_i gsl_solver_i.c -I build/include build/lib/libgsl.a build/lib/libgslcblas.a -lm -lstdc++ $(CFLAGS)
	
# Build mplapack
mplapack: mplapack.cc bin
	$(CXX) -o bin/mplapack mplapack.cc -I/home/docker/MPLAPACK/include -I/home/docker/MPLAPACK/include/mplapack -L/home/docker/MPLAPACK/lib -lmplapack__Float128 -lmpblas__Float128 $(CFLAGS)

# Clean up build files
clean:
	rm -f bin/generator bin/gsl_solver bin/gsl_solver_i bin/mplapack
