for ((N=65536; N<=67108865;N=N*2))
do
  time ./SumaVectoresC.eje $N
done
echo "*************"
for ((N=65536; N<=67108865;N=N*2))
do
  time ./SumaVectoresCejer7.eje $N
done
echo "*************"
for ((N=65536; N<=67108865;N=N*2))
do
  time ./SumaVectoresCejer8.eje $N
done
