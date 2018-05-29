#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#include <string.h>

void printMatriz (int n, int *m) {
    int i, j;
    for (i=0; i<n; i++) {
        for (j=0; j<n; j++)
            printf("%d ", m[i*n+j]);
        printf("\n");
    }
}

int main(int argc, char const *argv[]) {
    if (argc < 2) {
        fprintf(stderr, "ERROR: falta numero de filas y columnas\n");
        exit(1);
    }

    unsigned n, i, j, k;
    n = strtol(argv[1], NULL, 10);

    int *a, *b, *c;
    c = malloc((n*n)*sizeof(int));
    b = malloc((n*n)*sizeof(int));
    a = malloc((n*n)*sizeof(int));
    /*for (i=0; i<n; i++) {
        a[i] = (int *) malloc(n*sizeof(int));
        b[i] = (int *) malloc(n*sizeof(int));
        c[i] = (int *) malloc(n*sizeof(int));
    }*/

    // Inicializcion
    for (i=0; i<n*n; i++) {

            a[i] = 0;
            b[i] = /*i+1*/2;
            c[i] = /*j+1*/1;
    }

    struct timespec cgt1,cgt2; double ncgt;

    clock_gettime(CLOCK_REALTIME,&cgt1);
    // Multiplicacion
    for (i=0; i<n; i++)
      for (k=0; k<n; k++)
        for (j=0; j<n; j++)

                a[i*n+j] += b[i*n+k] * c[k*n+j];
    clock_gettime(CLOCK_REALTIME,&cgt2);

    ncgt=(double) (cgt2.tv_sec-cgt1.tv_sec)+( double) ((cgt2.tv_nsec-cgt1.tv_nsec)/(1.e+9));

    if (n < 15) {
        printf("M1:\n");
        printMatriz(n, b);
        printf("M2:\n");
        printMatriz(n, c);
        printf("Sol:\n");
        printMatriz(n, a);
        printf("Tiempo = %11.9f\t Primera = %d\t Ultima=%d\n",ncgt,a[0],a[(n*n)-1]);
    }
    else
        printf("Tiempo = %11.9f\t Primera = %d\t Ultima=%d\n",ncgt,a[0],a[(n*n)-1]);

    /*for (i=0; i<n; i++) {
        free(a[i]);
        free(b[i]);
        free(c[i]);
    }*/

    free(a);
    free(b);
    free(c);

    return 0;
}
