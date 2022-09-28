#!/bin/bash

i=1;
while [ $i -le 15 ];
do
  echo "$i,";
  let i=$i+2;
done

