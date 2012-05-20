set title "Key read number"
set xlabel "Key id"
set xrange [0:99720]
set ylabel "Read number"
set yrange [0:27500]
set term png
set output "read.png"
plot "Read1.txt" using 1:2 with linespoints title "Read number"
