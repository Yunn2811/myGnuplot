plot sin(x)
replot cos(x)

plot "test1.dat" with linespoints, "test2.dat" with linespoints, "test2_1.dat"
plot "test1.dat" with lines
plot "test3.dat" with linespoints


#3次元のデータplot
splot "test4.dat" with lines 
set parametric
splot "test4_1.dat" with lines 
splot "test5.dat" with lines 
splot "test6.dat" with lines 

splot "test6.dat" index 0 with lines
splot "test6.dat" index 0:1 with lines
#オプション内容を表示する
show parametric

#3次元グラフ
#z=x**2+y**2
splot (x**2+y**2)

#軸の範囲を指定
plot [-2*pi:2*pi] cos(x)
plot [-pi:pi][-2:2] cos(x)

#関数と変数
f(x,y)=sqrt(x**2+y**2)
set xrange [5:15]
set yrange [5:15]
splot f(x,y) title "example" with lines

set parametric
set trange [-pi/2:pi/2]





