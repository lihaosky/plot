set terminal postscript eps enhanced color
set output "Server1.eps"
set size 0.63, 0.60
set xrange [1:11]
set xlabel "Server rankings based on load"
set yrange [70:140]
set y2range [40:120]
set ylabel "Read count (k)"
set y2label "Mean latency (ms)"
set ytics nomirror
set y2tics
set xtics nomirror
set xtics 1
set tics out
plot "Server1.txt" using 1:($2)/1000 with linespoints title "Read count", "Server1.txt" using 1:3 with linespoints title "Mean latency" axes x2y2
