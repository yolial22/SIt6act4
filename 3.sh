#!/bin/bash

acumu=1;
i=1;

echo "Introduce un numero: ";

read numero;

echo "El factorial del numero $numero es: ";

while [ $numero -gt 1 ]; do

 acumu=$((acumu*numero));

 numero=$((numero-1));

done

echo $acumu;


