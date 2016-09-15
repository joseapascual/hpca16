reset
set term postscript eps enhanced color font "Arial,22"

unset key

set xrange[0:32]
#set yrange[0:5]

#set format y "10^{%L}"
#set xlabel "Number of switches" font "Arial,22"
#set ylabel "(%) of used links" font "Arial,22"
set tics font "Arial, 18"
set output "graph_multiapp_all2all.eps"

# Color runs from white to green
set palette model XYZ rgbformulae 7,5,15
#set palette model CMY rgbformulae 7,5,15
#set palette rgbformulae 7,5,15
#set palette model RGB rgbformulae 7,5,15
#set palette rgbformula -7,2,-7
set cbrange [0:25000]
set cblabel "Score"
unset cbtics

set view map
plot "data_multiapp" matrix rowheaders using 1:2:3 with image
#splot "data_multiapp" matrix with image
