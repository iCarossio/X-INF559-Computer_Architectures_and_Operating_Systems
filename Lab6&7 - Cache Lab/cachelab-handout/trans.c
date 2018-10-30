/*
 * Antoine Carossio antoine.carossio
 *
 * trans.c - Matrix transpose B = A^T
 *
 * Each transpose function must have a prototype of the form:
 * void trans(int M, int N, int A[N][M], int B[M][N]);
 *
 * A transpose function is evaluated by counting the number of misses
 * on a 1KB direct mapped cache with a block size of 32 bytes.
 */

#include <stdio.h>
#include "cachelab.h"

#define min(a,b) ((a) < (b) ? (a) : (b))

int is_transpose(int M, int N, int A[N][M], int B[M][N]);

/*
 * transpose_submit - This is the solution transpose function that you
 *     will be graded on for Part B of the assignment. Do not change
 *     the description string "Transpose submission", as the driver
 *     searches for that string to identify the transpose function to
 *     be graded.
 */
char transpose_submit_desc[] = "Transpose submission";
void transpose_submit(int M, int N, int A[N][M], int B[M][N]) {


    int row, col, i, j, k, l;
    int tmp0=0, tmp1=0, tmp2=0, tmp3=0;


    /* 61*67 case : Since there is no diagonal element, this is the easiest case. 
       I started by this case, especially with the help of this thread :
       https://stackoverflow.com/questions/5200338/a-cache-efficient-matrix-transpose-program）
    */

    if (M == 61 && N == 67) {
        for(i = 0; i < N; i += 16) {
            for(j = 0; j < M; j += 16) {
                for(k = i; k < min(i+16, N); k++) {
                    for(l = j; l < min(j+16, M); l++) {
                        B[l][k] = A[k][l];
                    }
                }
            }
        }
    }

    /* Then I tried to handle the square matrix cases by adapting the previous algorithm.
     * Main issue: The same rows of A & B are cached into the same sets -> Lot of misses.
     * Key ideas:
     *  - Process block by block
     *  - Process row by row into these blocks
     *  - Save diagonal elements from A to a tmp varable, and then copy it to B
     */

    if (M == N) {

        /* 32*32 case */
        if (M == 32) {
            
            // Divide data into 8*8 blocks
            for (row = 0; row < N; row += 8) {
                for (col = 0; col < M; col += 8) {
                    
                    // For each block process row by row
                    for (i = row; i < row + 8; i++) {
                        
                        // Save the diagonal element
                        if (row == col) {
                            tmp0 = A[i][i];
                        }
                        for (j = col; j < col + 8; j++) {
                            if (i != j) {
                                B[j][i] = A[i][j];
                            }
                        }
                        
                        // Store diagonal element back
                        if (row == col) {
                            B[i][i] = tmp0;
                        }
                    }
                    
                }
            }
            
        }

        /* 64*64 case */
        if (M == 64) {

            // Divide data into 8*8 blocks
            for (row = 0; row < M; row += 8) {
                for (col = 0; col < N; col += 8) {
                    
                    // Process the 4 first lines of the block
                    for (i = 0; i < 4; i++) {
                        
                        // Diagonal element
                        if (row == col) {
                            tmp0 = A[row+i][row+i];
                        }
                        // Transpose the A's 4*4 upper left subblock and store it to the B's 4*4 upper left subblock
                        for (j = 0; j < 4; j++) {
                            if (col != row || i != j) {
                                B[col+j][row+i] = A[row+i][col+j];
                            }
                        }
                        // Transpose the A's 4*4 upper right subblock and store it to the B's 4*4 upper right subblock
                        for (j = 0; j < 4; j++) {
                            B[col+j][row+i+4] = A[row+i][col+j+4];
                        }
                        // Store the diagonal element back to B
                        if (row == col) {
                            B[col+i][row+i] = tmp0;
                        }
                    }
                    
                    /* Transpose the A's 4*4 lower left block and store it to the B's 4*4 lower left subblock
                     * and exchange the B's 4*4 upper right subblock with the B's 4*4 lower left subblock
                     */
                    for (i = 0; i < 4; i++) {
                        tmp0 = B[col+i][row+4];
                        tmp1 = B[col+i][row+5];
                        tmp2 = B[col+i][row+6];
                        tmp3 = B[col+i][row+7];
                        for (j = 0; j < 4; j++) {
                            B[col+i][row+j+4] = A[row+j+4][col+i];
                        }
                        B[col+i+4][row]   = tmp0;
                        B[col+i+4][row+1] = tmp1;
                        B[col+i+4][row+2] = tmp2;
                        B[col+i+4][row+3] = tmp3;
                    }

                    // Transpose the A's 4*4 lower right block and store it to the B's 4*4 lower right subblock
                    for (i = 0; i < 4; i++) {
                        // Save diagonal element
                        if (row == col) {
                            tmp0 = A[row+i+4][row+i+4];
                        }
                        for (j = 0; j < 4; j++) {
                            if (col != row || i != j) {
                                B[col+j+4][row+i+4] = A[row+i+4][col+j+4];
                            }
                        }
                        // Store diagonal element back
                        if (col == row) {
                            B[col+i+4][col+i+4] = tmp0;
                        }
                    }
                }
            }
        }

    }

}

/*
 * You can define additional transpose functions below. We've defined
 * a simple one below to help you get started.
 */

/*
 * trans - A simple baseline transpose function, not optimized for the cache.
 */
char trans_desc[] = "Simple row-wise scan transpose";
void trans(int M, int N, int A[N][M], int B[M][N])
{
    int i, j, tmp;
    
    for (i = 0; i < N; i++) {
        for (j = 0; j < M; j++) {
            tmp = A[i][j];
            B[j][i] = tmp;
        }
    }
    
}

/*
 * registerFunctions - This function registers your transpose
 *     functions with the driver.  At runtime, the driver will
 *     evaluate each of the registered functions and summarize their
 *     performance. This is a handy way to experiment with different
 *     transpose strategies.
 */
void registerFunctions()
{
    /* Register your solution function */
    registerTransFunction(transpose_submit, transpose_submit_desc);
    
    /* Register any additional transpose functions */
    // registerTransFunction(trans, trans_desc);
    
}

/*
 * is_transpose - This helper function checks if B is the transpose of
 *     A. You can check the correctness of your transpose by calling
 *     it before returning from the transpose function.
 */
int is_transpose(int M, int N, int A[N][M], int B[M][N])
{
    int i, j;
    
    for (i = 0; i < N; i++) {
        for (j = 0; j < M; ++j) {
            if (A[i][j] != B[j][i]) {
                return 0;
            }
        }
    }
    return 1;
}

