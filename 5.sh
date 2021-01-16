#!/bin/bash

saldo=100;

compra=0;

puedo=100;

while [ $puedo -ge 0 ]; do

 read -p "Tiene de saldo $saldo euros. Introduzca su compra: " compra

 puedo=$((puedo-compra));

 if [ $puedo -ge 0 ]; then

 saldo=$((saldo-compra));

 fi

done

let gasto=$((100-saldo));

echo "No tiene suficiente saldo";

echo "Su gasto ha sido de $gasto euros y le queda $saldo euros";
