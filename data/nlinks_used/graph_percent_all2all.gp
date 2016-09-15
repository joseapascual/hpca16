reset
set term postscript eps enhanced color font "Arial,22"

set style line 1 lt -1 lw 0.5

set key box linestyle 1
set key out horiz center top
set key font "Arial,20"
#set key width -2.6

set yrange[0:100]
set grid ytics

#set format y "10^{%L}"
set xlabel "Number of switches" font "Arial,22"
set ylabel "(%) of used links" font "Arial,22"

set boxwidth 1
set style fill solid border 0

set output "graph_percent_all2all.eps"

set style data histogram
set style histogram clustered

plot "data_percent_all2all" using 2:xticlabels(1) title columnheader, "data_percent_all2all" using 3:xticlabels(1) title columnheader, "data_percent_all2all" using 4:xticlabels(1) title columnheader, "data_percent_all2all" using 5:xticlabels(1) title columnheader, "data_percent_all2all" using 6:xticlabels(1) title columnheader, "data_percent_all2all" using 7:xticlabels(1) title columnheader 
