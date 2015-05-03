set title "Carga promedio de los nodos"
set ylabel "Carga de los nodos"
set format y "%g %%"

unset key

set terminal pdf  monochrome font "Helvetica"
set style fill pattern 2

set xtics rotate by -45
set boxwidth 0.5

set output 'out.pdf'
plot "data.dat" using 2:xtic(1) with boxes
unset output
