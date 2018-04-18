#!/bin/bash
INICIO=7
FIN=12
INCREMENTO=1

i=$INICIO
while [ $i -le $FIN ]
do
  echo Num cores = $i
  echo "9-a"
  export OMP_NUM_THREADS=$i


  ./ejer9-a.eje 15000
  ./ejer9-a.eje 30000

  echo "9-b"


  ./ejer9-b.eje 15000
  ./ejer9-b.eje 30000


  echo "10"


  ./ejer10.eje 15000
  ./ejer10.eje 30000

  i=$((i+$INCREMENTO))
done
