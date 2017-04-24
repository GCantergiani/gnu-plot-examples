set terminal pdf  monochrome font "Helvetica"
set output 'out.pdf'
set ylabel 'Carga promedio (%)'

set multiplot layout 1,3 font "Helvetica,14"
set xtics rotate
set style fill pattern 7
set format y "%g %%"

#
set title "Iteración I"
unset key
unset ytics
set boxwidth 0.5
set yrange [1:100]
plot "data.dat" using 2:xtic(1) with boxes
unset ylabel
#
set title "Iteración II"
unset key
set boxwidth 0.5
set yrange [1:100]
plot "data2.dat" using 2:xtic(1) with boxes
#
set title "Iteración III"
unset key
set boxwidth 0.5
set yrange [10:100]
plot "data3.dat" using 2:xtic(1) with boxes
#
unset multiplot
unset output
