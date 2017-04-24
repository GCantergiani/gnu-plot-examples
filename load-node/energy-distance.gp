set term postscript eps enhanced color font "Helvetica, 25"
set auto x
set auto y
set xlabel 'Tiempo [m]' font "Helvetica, 25"
set ylabel 'Carga [%]' font "Helvetica, 25" offset 2,0,0
set style data linespoints
set key top right font "Helvetica, 25" spacing 1

set output 'img-energy-distance.eps'

plot 'energy-distance-plot.data' using 1:2 title 'Nodo 1' lc 1   ,\
							  '' using 1:3 title 'Nodo 2' lc 2  ,\
    						  '' using 1:4 title 'Nodo 3' lc 3 
unset output
