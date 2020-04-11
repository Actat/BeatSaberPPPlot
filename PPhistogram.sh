#!/usr/bin/env bash

filename="pp.tmp"
loop=3688
cd `dirname $0`

# touch $filename

for i in `seq $loop`
do
    echo $i
    wget -O - https://scoresaber.com/global/${i}|grep 'scoreTop ppValue'|sed -e 's/[^0-9.]//g'>>$filename
done

gnuplot -e "file='$filename'" histogram.plt

