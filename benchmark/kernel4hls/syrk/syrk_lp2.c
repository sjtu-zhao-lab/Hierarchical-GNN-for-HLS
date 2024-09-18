#include <stdio.h>
#include <unistd.h>
#include <string.h>
#include <math.h>

#define N 64

#define DATA_TYPE float
#define SCALAR_VAL(x) x##f
#define SQRT_FUN(x) sqrtf(x)
#define EXP_FUN(x) expf(x)
#define POW_FUN(x,y) powf(x,y)

void loop1(int i, int j, DATA_TYPE beta, DATA_TYPE C[N][N]) {

	lp2: for (j = 0; j < N; j++) {
		C[i][j] *= beta;
	}
}

void syrk(int i, int j, int k, DATA_TYPE alpha, DATA_TYPE beta, DATA_TYPE A[N][N], DATA_TYPE C[N][N]) {
	loop1(i, j, beta, C);
}

