#概要：ブラウン運動の描写
#環境：Windows 10 Pro x64
#言語：Gnuplot 5.2.0 patchlevel6a
#初版：2019-05-20
#更新：2019-05-23
#更新：2022-04-05

#設定：
color = "#224466"
Du = 0.2
dt = 0.1
i_max = 200  #時間ステップ
j_max = 1000 #粒子の数
set nokey
set nogrid
set noborder
set noxzeroaxis
set noyzeroaxis
set nozeroaxis
set xtics nomirror
set ytics nomirror
set noxtics
set noytics
set xrange[-10:10]
set yrange[-10:10]
array X[j_max]
array Y[j_max]
do for [j = 1:j_max] {
    X[j] = 0
    Y[j] = 0
}
#Box-Muller法により2つの一様分布乱数から正規分布乱数を生成
xi(x,y)=x+y*(-2*log(rand(0)))**0.5*sin(2*pi*rand(0)) 

#描写：
set term gif animate optimize delay 2 size 600,600
set output sprintf("%s.gif",ARG0)
plot Y using (X[$1]):2 with p pt 7 ps 1 lc rgb color
do for [i = 0:i_max] {
    do for [j = 1:j_max] {
        X[j] = X[j] + sqrt(2*Du*dt) * xi(0,1) # ループ内のsqrt()は無駄
        Y[j] = Y[j] + sqrt(2*Du*dt) * xi(0,1)
    }
    plot Y using (X[$1]):2 with p pt 7 ps 1 lc rgb color
}
set out
