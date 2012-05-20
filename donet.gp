#################################################

set terminal postscript eps enhanced color
set output "donet.eps"

set style line 1 lt 1 lc 1 lw 4
set style line 2 lt 2 lc 2 lw 4
set style line 3 lt 3 lc 3 lw 4
set style line 4 lt 4 lc 4 lw 4
set style line 5 lt 5 lc 5 lw 4
set style line 6 lt 6 lc 7 lw 4

#################################################

set size 0.63,0.60
set key left top
set log x
set format x "10^{%L}"
set ytics nomirror
set xtics nomirror
set xrange [1:100000]
set yrange [0:110]
set xlabel "Delivery time [ms]"
set ylabel "Mean CDF per message [%]"
plot "donet-1500-512k-cdf-merge" using 1:($2*100) with lines ls 1 title "1.5k",\
     "donet-15k-512k-cdf-merge" using 1:($2*100) with lines ls 3 title "15k"
