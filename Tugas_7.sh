#!/bin/bash
# Mendeklarasikan fungsi
function panjang {
 echo "Masukkan Panjang :"
 read P
}
function lebar {
 echo "Masukkan Lebar :"
 read l

let Luas=$P*$l
 echo -e "Luas persegi :\n$Luas"
}
# Memanggil fungsi
panjang
lebar
