za=qnorm(0.975,0,1)
zb=qnorm(0.2,0,1)
zb

z_ha=qnorm(0.05,0,1)
z_ha



z_hc=qnorm(0.101,0,1)
z_hc


p1=0.99
p2=0.99

n1=45
n2=15

pbar=(p1+p2)/2

##e=p1-p2
e=0.1
d=0.15

##Two sample Equality
n=(z_ha+zb)^2*(p1*(1-p1)+p2*(1-p2))/e^2
n

p=abs(e)/((p1*(1-p1)/n1)+(p2*(1-p2)/n2))^0.5-z_ha
p

power=pnorm(p, mean=0, sd=1)
power


##Two sample Non-inferiority/ Superiority

n=(za+zb)^2*(p1*(1-p1)+p2*(1-p2))/(e-d)^2
n
n/0.85

##Two sample Equivalence

n=(za+zb)^2*(p1*(1-p1)+p2*(1-p2))/(abs(e)-d)^2

##Two sample Alternative Formula
z_ha=1.96
zb=0.842

p1=0.6
p2=0.1
pbar=(p1+p2)/2
e=p1-p2

n=(((z_ha*(2*pbar*(1-pbar))^0.5)+(zb*(p1*(1-p1)+p2*(1-p2))^0.5))/e)^2
n
n/0.9

m=(((1.96*(2*0.48*(1-0.48))^0.5)+1.282*(0.72*(1-0.72)+0.24*(1-0.24))^0.5/(0.72-0.24))^2
m
a=1.96*sqrt(2*0.48*(1-0.48))
b=1.282*sqrt(0.72*(1-0.72)+0.24*(1-0.24))
c=0.69-0.23
d=((a+b)/c)^2
d