for ((N=16384; N<=67108865;N=N*2))
do
  ./SumaVectoresC.eje $N
done

for ((N=16384; N<=67108865;N=N*2))
do
  ./SumaVectoresCejer7.eje $N
done

for ((N=16384; N<=67108865;N=N*2))
do
  ./SumaVectoresCejer8.eje $N
done
