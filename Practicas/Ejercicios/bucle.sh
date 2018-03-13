#!/bin/sh

read -p "Introduce nombre de usuario :" N
if [ $N != "i62capuj" ];

then 
	echo "te has equivocado" 
	./bucle.sh

else 
	echo "Correccto"
fi
