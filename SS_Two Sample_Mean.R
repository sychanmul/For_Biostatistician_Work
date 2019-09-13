#Definition of Parameters

za=qnorm(0.05,0,1)
za
zb=qnorm(0.2,0,1)
zb
z_ha=qnorm(0.025,0,1)
z_hb=qnorm(0.2,0,1)

#e=difference between the mean response of the test drug(u) and placebo control(uo)
#u=the true mean response of a test drug
#u0=mean response of placebo control
#s=sigma(s^2=variance of the response)
#d=non-inferiority/superiority margin(delta)

u1=6.4
u2=1.8

e=u1-u2

##e=1.8
s=5
d=0

##Two sample Equality
#H0:e=0 #H1:e not equal to 0

#when n1=k*n2
#n2=(1+1/k)*(z_ha+zb)^2*s^2/e^2

#when n1=n2

n=2*(z_ha+zb)^2*s^2/e^2
n

es=0.83
n=4*(za+zb)^2/(es)^2
n

##Two Sample Non-inferiority/ Superiority
#H0:e<=d #H1: e>d

#when n1=k*n2
#n2=(1+1/k)*(za+zb)^2*s^2/(e-d)^2

#when n1=n2

n=2*(za+zb)^2*s^2/(e-d)^2
n
n/0.8

a=1.96
b=0.84
s=3.5
d=5.8
d

n=2*((a+b)^2)*(s^2)/(0.8*(d)^2)
n

a=1.96
b=0.84
d=5.8-3.87

n1=85
n2=85
s1=14.1
s2=22
e=61.8
c=25.6


sigma=((n1-1)*s1^2+(n2-1)*s2^2)/(n1+n2-2)
sigma

s=sigma^0.5
s

es=(e-c)/s
es



n=2*((a+b)^2)*(s^2)/(0.8*((d)^2))
n


##Two Sample Equivalence
#H0:abs(e)>=d #H1: abs(e)<d

#when n1=k*n2
#n2=(1+1/k)*(za+z_hb)^2*s^2/(abs(e)-d)^2

#when n1=n2

n=2*(za+z_hb)^2*s^2/(abs(e)-d)^2