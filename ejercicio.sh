#!/bin/bash

CONT=0
array5=()

#Ingreso de datos
while [  $CONT -lt 5 ]; do
    echo "Ingresa el elemento "$CONT":"
    read elemento
    array5[$CONT]=$elemento
    let CONT=$CONT+1 
done

CONT=0
echo ${array5[*]}
#Escritura de archivos
while [  $CONT -lt 100 ]; do
    archivo="archivo"$CONT".txt" 
    touch $archivo
    if [ $CONT -lt 50 ]; then
        echo ${array5[0]} >> $archivo 
        echo ${array5[2]} >> $archivo 
        echo ${array5[4]} >> $archivo 
    else
        echo ${array5[1]} >> $archivo
        echo ${array5[3]} >> $archivo 
    fi
    let CONT=$CONT+1 
done

cat "archivo10.txt"



















