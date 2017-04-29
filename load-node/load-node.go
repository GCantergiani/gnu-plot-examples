set terminal pdf size 10cm,8cm font "Helvetica, 10"
set auto x
set auto y
set xlabel 'Tiempo [m]'
set ylabel 'Carga [%]'
set style data linespoints
set key top right spacing 1

set output 'load-node.pdf'

plot 'energy-distance-plot.data' using 1:2 title 'Nodo 1' lc 1   ,\
							  '' using 1:3 title 'Nodo 2' lc 2  ,\
    						  '' using 1:4 title 'Nodo 3' lc 3 
unset output
