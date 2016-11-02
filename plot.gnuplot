#! /usr/bin/gnuplot -persist
set terminal pdf font "Ubuntu, 10"
set encoding utf8
set xlabel "x (microns)" font "Ubuntu, 10"
set yrange [-1:1]
set grid
set pointsize 0.5
set key top left

set xrange [18:22]
set output "./img/E_T_0_30.pdf"
set ylabel "E/E_0" font "Ubuntu, 10"
plot "./_build/Ey_vs_x_T=0_task1.dat" title "T=0", \
     "./_build/Ey_vs_x_T=10_task1.dat" title "T=10", \
     "./_build/Ey_vs_x_T=20_task1.dat" title "T=20", \
     "./_build/Ey_vs_x_T=30_task1.dat" title "T=30"
set xrange [0:80]
set output "./img/E_T>30.pdf"
set ylabel "H/H_0" font "Ubuntu, 10"
plot "./_build/Ey_vs_x_T=0_task1.dat" title "T=0", \
     "./_build/Ey_vs_x_T=1000_task1.dat" title "T=1000", \
     "./_build/Ey_vs_x_T=2000_task1.dat" title "T=2000", \
     "./_build/Ey_vs_x_T=3000_task1.dat" title "T=3000", \
     "./_build/Ey_vs_x_T=4000_task1.dat" title "T=4000"


set xrange [18:22]
set output "./img/H_T_0_30.pdf"
plot "./_build/Hz_vs_x_T=0_task1.dat" title "T=0", \
     "./_build/Hz_vs_x_T=10_task1.dat" title "T=10", \
     "./_build/Hz_vs_x_T=20_task1.dat" title "T=20", \
     "./_build/Hz_vs_x_T=30_task1.dat" title "T=30"
set xrange [0:80]
set output "./img/H_T>30.pdf"
plot "./_build/Hz_vs_x_T=0_task1.dat" title "T=0", \
     "./_build/Hz_vs_x_T=1000_task1.dat" title "T=1000", \
     "./_build/Hz_vs_x_T=2000_task1.dat" title "T=2000", \
     "./_build/Hz_vs_x_T=3000_task1.dat" title "T=3000", \
     "./_build/Hz_vs_x_T=4000_task1.dat" title "T=4000"

set yrange [-2:2]
set xrange [78:80]
set output "./img/task2_E.pdf"
set ylabel "E/E_0" font "Ubuntu, 10"
# plot "./_build/Ey_vs_x_T=3280_task2.dat" title "T=3280", \
#      "./_build/Ey_vs_x_T=3290_task2.dat" title "T=3290", \
#      "./_build/Ey_vs_x_T=3300_task2.dat" title "T=3300", \

plot "./_build/Ey_vs_x_T=3310_task2.dat" title "T=3310", \
     "./_build/Ey_vs_x_T=3320_task2.dat" title "T=3320", \
     "./_build/Ey_vs_x_T=3330_task2.dat" title "T=3330", \
     "./_build/Ey_vs_x_T=3340_task2.dat" title "T=3340", \
     "./_build/Ey_vs_x_T=3350_task2.dat" title "T=3350"

set output "./img/task2_H.pdf"
set ylabel "H/H_0" font "Ubuntu, 10"
# plot "./_build/Hz_vs_x_T=3280_task2.dat" title "T=3280", \
#      "./_build/Hz_vs_x_T=3290_task2.dat" title "T=3290", \
#      "./_build/Hz_vs_x_T=3300_task2.dat" title "T=3300", \

plot "./_build/Hz_vs_x_T=3310_task2.dat" title "T=3310", \
     "./_build/Hz_vs_x_T=3320_task2.dat" title "T=3320", \
     "./_build/Hz_vs_x_T=3330_task2.dat" title "T=3330", \
     "./_build/Hz_vs_x_T=3340_task2.dat" title "T=3340", \
     "./_build/Hz_vs_x_T=3350_task2.dat" title "T=3350"
