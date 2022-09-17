#!/bin/bash

echo "=============================="
echo " 	pilih menu	"
echo "=============================="
echo "1. hitung luas lingkaran"
echo "2. hitung luas segitiga"
echo "pilih menu :"
read pilih

case $pilih in
1)
echo "=============================="
echo "input jari-jari lingkaran"
echo "=============================="

read r
echo "=============================="
k= echo 3.14*$r*$r |bc
echo "luas lingkaran = $k"
;;
2)
echo "=============================="
echo "hitung luas segitiga"
echo "=============================="
echo "input alas :"
read a
echo "input tinggi: "
read t
echo "=============================="
k= echo 0.5*$a*$t |bc
echo "luas segitiga = $k"
;;
*)
echo "pilih salah"
esac


