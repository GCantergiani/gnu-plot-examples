set term postscript eps enhanced color font "Helvetica, 25"
set auto x
set auto y
#set xrange [1:10]
#set yrange [0.85:1.85]
set xlabel 'Tiempo [m]' font "Helvetica, 25"
set ylabel 'Carga [%]' font "Helvetica, 25" offset 2,0,0
set style data linespoints
set key top right font "Helvetica, 25" spacing 1
#set pointsize 1.5
#set ytics 0.25
#set xtics 250
#set format y "%.2t";
#set size 1
#set linestyle 1 lt -1 lw 1 lc rgb "blue"
#set linestyle 2 lt -1 lw 1 lc rgb "orange"
#set linestyle 3 lt -1 lw 1 lc rgb "purple"
#set linestyle 4 lt -1 lw 1 lc rgb "red"
#set style fill transparent solid 0.1 / with filledcurve x1

set output 'img-energy-distance.eps'

plot 'energy-distance-plot.data' using 1:2 title 'Nodo 1' lc 1   ,\
							  '' using 1:3 title 'Nodo 2' lc 2  ,\
    						  '' using 1:4 title 'Nodo 3' lc 3 
unset output
