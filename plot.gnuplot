#! /usr/bin/gnuplot -persist
set terminal pdf font "Ubuntu, 10"
set encoding utf8
set xlabel "x (microns)" font "Ubuntu, 10"
set ylabel "E/E_0" font "Ubuntu, 10"
set yrange [-2:2]
set xrange [78:80]
set grid
set pointsize 0.5
set key top left
# set output "/home/grigory/dev/fdtd-practice-1/img/E_T_0.pdf"
# plot "/home/grigory/dev/fdtd-practice-1/_build/Ey_vs_x_T=0_task1.dat" title "T=0"
# set output "/home/grigory/dev/fdtd-practice-1/img/E_T_10.pdf"
# plot "/home/grigory/dev/fdtd-practice-1/_build/Ey_vs_x_T=10_task1.dat" title "T=10"
# set output "/home/grigory/dev/fdtd-practice-1/img/E_T_20.pdf"
# plot "/home/grigory/dev/fdtd-practice-1/_build/Ey_vs_x_T=20_task1.dat" title "T=20"
# set output "/home/grigory/dev/fdtd-practice-1/img/E_T_30.pdf"
# plot "/home/grigory/dev/fdtd-practice-1/_build/Ey_vs_x_T=30_task1.dat" title "T=30"
# set output "/home/grigory/dev/fdtd-practice-1/img/E_T>30.pdf"
# plot "/home/grigory/dev/fdtd-practice-1/_build/Ey_vs_x_T=0_task1.dat" title "T=0", \
#      "/home/grigory/dev/fdtd-practice-1/_build/Ey_vs_x_T=1000_task1.dat" title "T=0", \
#      "/home/grigory/dev/fdtd-practice-1/_build/Ey_vs_x_T=2000_task1.dat" title "T=1000", \
#      "/home/grigory/dev/fdtd-practice-1/_build/Ey_vs_x_T=3000_task1.dat" title "T=2000", \
#      "/home/grigory/dev/fdtd-practice-1/_build/Ey_vs_x_T=4000_task1.dat" title "T=3000"
# 
# 
# set output "/home/grigory/dev/fdtd-practice-1/img/H_T_0.pdf"
# plot "/home/grigory/dev/fdtd-practice-1/_build/Hz_vs_x_T=0_task1.dat" title "T=0"
# set output "/home/grigory/dev/fdtd-practice-1/img/H_T_10.pdf"
# plot "/home/grigory/dev/fdtd-practice-1/_build/Hz_vs_x_T=10_task1.dat" title "T=10"
# set output "/home/grigory/dev/fdtd-practice-1/img/H_T_20.pdf"
# plot "/home/grigory/dev/fdtd-practice-1/_build/Hz_vs_x_T=20_task1.dat" title "T=20"
# set output "/home/grigory/dev/fdtd-practice-1/img/H_T_30.pdf"
# plot "/home/grigory/dev/fdtd-practice-1/_build/Hz_vs_x_T=30_task1.dat" title "T=30"
# set output "/home/grigory/dev/fdtd-practice-1/img/H_T>30.pdf"
# plot "/home/grigory/dev/fdtd-practice-1/_build/Hz_vs_x_T=0_task1.dat" title "T=0", \
#      "/home/grigory/dev/fdtd-practice-1/_build/Hz_vs_x_T=1000_task1.dat" title "T=0", \
#      "/home/grigory/dev/fdtd-practice-1/_build/Hz_vs_x_T=2000_task1.dat" title "T=1000", \
#      "/home/grigory/dev/fdtd-practice-1/_build/Hz_vs_x_T=3000_task1.dat" title "T=2000", \
#      "/home/grigory/dev/fdtd-practice-1/_build/Hz_vs_x_T=4000_task1.dat" title "T=3000"

set output "/home/grigory/dev/fdtd-practice-1/img/task2_E.pdf"
plot "/home/grigory/dev/fdtd-practice-1/_build/Ey_vs_x_T=3330_task2.dat" title "T=3330", \
     "/home/grigory/dev/fdtd-practice-1/_build/Ey_vs_x_T=3340_task2.dat" title "T=3340", \
     "/home/grigory/dev/fdtd-practice-1/_build/Ey_vs_x_T=3350_task2.dat" title "T=3350", \
     "/home/grigory/dev/fdtd-practice-1/_build/Ey_vs_x_T=3360_task2.dat" title "T=3360", \
     "/home/grigory/dev/fdtd-practice-1/_build/Ey_vs_x_T=3370_task2.dat" title "T=3370", \
     "/home/grigory/dev/fdtd-practice-1/_build/Ey_vs_x_T=3380_task2.dat" title "T=3380", \
     "/home/grigory/dev/fdtd-practice-1/_build/Ey_vs_x_T=3390_task2.dat" title "T=3390"

set output "/home/grigory/dev/fdtd-practice-1/img/task2_H.pdf"
plot "/home/grigory/dev/fdtd-practice-1/_build/Hz_vs_x_T=3330_task2.dat" title "T=3330", \
     "/home/grigory/dev/fdtd-practice-1/_build/Hz_vs_x_T=3340_task2.dat" title "T=3340", \
     "/home/grigory/dev/fdtd-practice-1/_build/Hz_vs_x_T=3350_task2.dat" title "T=3350", \
     "/home/grigory/dev/fdtd-practice-1/_build/Hz_vs_x_T=3360_task2.dat" title "T=3360", \
     "/home/grigory/dev/fdtd-practice-1/_build/Hz_vs_x_T=3370_task2.dat" title "T=3370", \
     "/home/grigory/dev/fdtd-practice-1/_build/Hz_vs_x_T=3380_task2.dat" title "T=3380", \
     "/home/grigory/dev/fdtd-practice-1/_build/Hz_vs_x_T=3390_task2.dat" title "T=3390"
