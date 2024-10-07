alpha=3
beta=9
k=gamma(alpha+beta)/gamma(alpha)/gamma(beta)
betafunc(x,alpha,beta)=k*(x**(alpha-1))*((1-beta)**(beta-1))

betafunc(x,alpha,beta)=(gamma(alpha+beta)/gamma(alpha)/gamma(beta))*(x**(alpha-1))*((1-x)**(beta-1))
plot [0:1]betafunc(x,3,9)

plot [0:1][0:3]betafunc(x,1,1) notitle
plot [0:1][0:3]betafunc(x,0.5,3) notitle
plot [0:1][0:3]betafunc(x,3,5) notitle
