#include <stdio.h>
#include <stdlib.h>
#ifdef _OPENMP
  #include <omp.h>
#else
  #define omp_get_thread_num() 0
#endif
int main(int argc, char** argv){


  int i, j, N, resultado;
  if(argc < 2) {
    fprintf(stderr,"Falta tamaño\n");
    exit(-1);
  }
  N = atoi(argv[1]);
  	double **m, *v1, *v2;
    double t1, t2, total;
  	v1 = (double*) malloc(N*sizeof(double));// malloc necesita el tamaño en bytes
  	v2 = (double*) malloc(N*sizeof(double)); //si no hay espacio suficiente malloc devuelve NULL
    m =(double **) malloc(N*sizeof(double *));
    if ( (v1==NULL) || (v2==NULL) || (m==NULL)){
  	printf("Error en la reserva de espacio para los vectores\n");
  	exit(-2);
  	}
    #pragma omp parallel for private(i,j)
      for (i = 0; i < N; i++){
        m[i] = malloc(N * sizeof(double));
        if ( m[i] == NULL ){
      	printf("Error en la reserva de espacio para los vectores\n");
      	exit(-2);
      	}
        for(j = 0; j < N; j++){
          m[i][j] = 5.0;
        }
      }


    for(i = 0; i < N; i++){
      v1[i] = 1.0;
      v2[i] = 0;
    }
    t1 = omp_get_wtime();
    #pragma omp parallel for private(i,j,resultado)
    for(i = 0; i < N; i++){
      resultado = 0;
      for(j = 0; j < N; j++)
        resultado += m[i][j];
      v2[i] += resultado * v1[i];
    }
    t2 = omp_get_wtime();
    total = t2 - t1;
    if(N <= 11){
      printf("Tiempo(seg.):%11.9f\t  Tamaño Vectores:%u\n",total,N);
        for(i=0; i<N; i++)
          printf("V2[%d] = %f \n",i,v2[i]);
    }else{
      printf("Tiempo(seg.):%11.9f\t Tamaño Vectores:%u\t V2[0] = %f V2[%d] = %f \n",total,N,v2[0],N-1,v2[N-1]);
    }
    free(v2); free(v1);
    for(i = 0; i < N; i++)
      free(m[i]);
    free(m);

}
