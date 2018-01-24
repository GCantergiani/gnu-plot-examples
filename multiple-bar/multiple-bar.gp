set terminal pdf  monochrome font "Helvetica"


set logscale y 10
set yrange [1:1000000]

set key horiz
set key left top

set format y '%.0f'

set boxwidth 0.9 absolute
set style histogram clustered gap 1 title textcolor lt -1
set datafile missing '-'
set style data histograms
set xtics border in scale 0,0 nomirror rotate by -45  autojustify

set title "Number of tweets collected per hour" 
set ylabel "Numbers of tweets"

set output 'out.pdf'
plot 'data.dat' using 2:xtic(1) ti col lt -1 fillstyle pattern 2,\
	  '' u 3:xtic(1) ti col lt -1 fillstyle pattern 8
unset output