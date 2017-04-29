set terminal pdf size 10cm,8cm font "Helvetica, 10"

set xrange [180:1800]
set yrange [0.85:1.85]
set xlabel 'Time [seconds]' 
set ylabel 'Energy [joules]'
set style data linespoints
set key top right spacing 1
set pointsize 1.5
set ytics 0.25
set xtics 250
set size 1
set linestyle 1 lt -1 lw 1 lc rgb "blue"
set linestyle 2 lt -1 lw 1 lc rgb "orange"
set linestyle 3 lt -1 lw 1 lc rgb "purple"
set linestyle 4 lt -1 lw 1 lc rgb "red"

set output 'energy-distance.pdf'

plot 'energy-distance-plot.data' using 1:2 title '0[m]' ls 1   smooth cspline ,\
							  '' using 1:3 title '2.5[m]' ls 2 smooth cspline ,\
    						  '' using 1:4 title '5[m]' ls 3   smooth cspline ,\
    					      '' using 1:5 title '7.5[m]' ls 4 smooth cspline
unset output
