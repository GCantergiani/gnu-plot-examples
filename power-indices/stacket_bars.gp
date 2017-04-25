#
# Stacked histograms by percent
#

# set output to PDF
set terminal pdf size 20cm,8cm
set output 'stacked_bars.pdf'

#tittle
set title "Senate: Shapley Shubik \n1/2 quorum - Coalitions"
set key invert reverse Left outside
set yrange [0:1]
set ylabel "% voting power"
set grid y
set style data histograms
set style histogram rowstacked
set style fill solid border -1
set boxwidth 0.75

# separator
set datafile separator ","

# rotate xlabel
set xtics rotate by 45 offset -6,-3.8
set bmargin 5

colorfunc(x) = x == 3? 1 : x == 4? 2 : 3

plot 'power_indices.dat' using (1.*$2/$5):xtic(1) lc rgbcolor "black" fs pattern 7 t column(2), \
     '' using (1.*column(3)/column(5)) title column(3) lc rgbcolor "black" fs pattern 2, \
     '' using (1.*column(4)/column(5)) title column(4) lc rgbcolor "black" fs pattern 4

unset output
