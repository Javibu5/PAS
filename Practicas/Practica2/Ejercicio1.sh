#!bin/bash 

echo "1) Lineas con la duracion de las peliculas"

cat peliculas.txt | grep -E '[0-9]+...+min'

echo "2) Lineas con el pais de lsa peliculas"

cat peliculas.txt | grep -E '\-.*\-'

echo "3) Solo el pais de las peliculas"

cat peliculas.txt | grep -E '\-.*\-' -o | tr -d "-"

echo "4)Hay $(cat peliculas.txt | grep -E '2016' -c) peliculas del 2016 y $(cat peliculas.txt | grep -E '2017' -c) del 2017"

echo "5)Eliminar lineas vacias"

cat peliculas.txt | grep -E '^.'


echo "6) Lineas que empiezan la letra E (con o sin espacios antes)"
cat peliculas.txt | grep -E '^ +E|^E'

echo "7) Lineas que contienen d, l o t, una vocal y la misma letra:"
cat peliculas.txt | grep -E 'd[aeiou]d | l[aeiou]l | t[aeiou]t'


