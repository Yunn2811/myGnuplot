#複数データのプロット表示
plot "test1.dat" with linespoints,"test2.dat" with linespoints

# 三次元グラフ表示
splot x**2+y**2

set noparametric
unset

set parametric
# > dummy variable is t for curves, u/v for surfaces

splot "test4_1.dat" with linespoints 
splot "test5.dat" with linespoints 
splot "test6.dat" with linespoints 
splot "test6.dat" index 0 with linespoints
splot "test6.dat" index 1 with linespoints

set option
unset option
show option
show parametric
# parametric is ON
unset parametric
show all

plot [-2*pi:2*pi] cos(x)
plot [-pi:pi][-2:2] cos(x)
splot [-3:3] [-8:8] [-10:30] x**2+y+5

plot [ x_min : x_max] [ y_min : y_max ] function

a = 25
A = 10-2
mu = 11.634
show variables #登録されてる変数の一覧が表示される
plot a*(x-2), exp(x/mu)

f(x,y)=sqrt(x**2+y**2)
set xrange [5:15]
set yrange [5:15]
splot f(x,y) title "example" with lines

# 媒介変数モード
set parametric
set trange [-pi/2:pi/2]
plot sin(2*t),cos(t)

# 等高線描画
set parametric
set contour both
splot "test5.dat" with linespoints 

