#!/usr/bin/env gnuplot

# usage: gnuplot -e "file='filename'" histogram.plt

print file

set terminal png
set output 'output.png'

filter(x,y)=int(x/y)*y
plot file using (filter($1, 200)):(1) smooth frequency with boxes

