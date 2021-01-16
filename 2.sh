#!/bin/bash

numero=0;
i=0;

while [ $numero -lt 1 ] || [ $numero -gt 100 ]; do

 echo "Introduce un numero entre el 1 y el 100: ";

 read numero;

done

while [ $i -le 10 ]; do

 let result=$numero*$i;

 echo $result;

 i=$((i+1));

done
