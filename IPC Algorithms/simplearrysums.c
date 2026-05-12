#include <stdio.h>
#include <stdlib.h>
#include <omp.h>

int main() {
    int N = 10000000;
    int* arr = (int*)malloc(N * sizeof(int));
    
    // Initialize array
    #pragma omp parallel for
    for (int i = 0; i < N; i++) {
        arr[i] = i + 1;
    }
    
    // Parallel sum reduction
    long long sum = 0;
    #pragma omp parallel for reduction(+:sum)
    for (int i = 0; i < N; i++) {
        sum += arr[i];
    }
    
    printf("Sum of 1 to %d = %lld\n", N, sum);
    printf("Expected sum = %lld\n", (long long)N * (N + 1) / 2);
    
    free(arr);
    return 0;
}
