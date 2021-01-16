#!/bin/bash

numero=`echo $(($RANDOM%100))`

usuario=0;

intentos=0;

echo "Introduce un numero entre el 1 y el 100: ";

read usuario;

echo "El numero es $numero: ";

while [ $usuario -ne $numero ]; do

 let multiplo=$usuario%$numero;

 let divisor=$numero%$usuario;

 if [ $multiplo -eq 0 ]; then

 echo "Tu numero es multiplo";

 else

  if [ $divisor -eq 0 ]; then

  echo "Tu numero es divisor";

  else

  echo "Tu numero no es ni multiplo ni divisor";

  fi

 fi

 intentos=$((intentos+1));

 echo "Introduce un numero entre el 1 y el 100: ";

 read usuario;

done

let puntos=$((100-intentos));

echo "Has acertado el nuemero en $intentos intentos y tienes $puntos puntos";


