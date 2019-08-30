#! /bin/bash

echo "[2]generar x cantidad de  archivos cada x segundos con la fecha y hora actual"

echo "Ingrese la cantidad de archivos a crear"
read cantidad 

echo "Ingrese la cantidad de segundo del intervalo"

read segundos

i=0
while $(test $i -lt $cantidad)
do

	let i=i+1
	echo "archivo"$i
	date > archivo$i.txt
	sleep $segundos

done
