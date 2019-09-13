
#Definition of Parameters

za=qnorm(0.05,0,1)
zb=qnorm(0.2,0,1)
zb
z_ha=qnorm(0.025,0,1)

#e=difference between the mean response of the test drug(u) and 
   the reference value(uo)
#u=the true mean response of a test drug
#u0=a reference value
#s=sigma(s^2=variance of the response)
#d=non-inferiority/superiority margin(delta)

u=35
u0=35

##e=u-u0
e=0.21
s=0.5


d=0

##One sample Equality

#H0:e=0 #H1:e not equal to 0

n=(z_ha+zb)^2*s^2/e^2

##One Sample Superiority/Non-inferiority
#H0:e<=d #H1: e>d

n=(za+zb)^2*s^2/(e-d)^2
n
n/0.8

##One Sample Equivalence
#H0:abs(e)>=d #H1: abs(e)<d

n=(za+zb)^2*s^2/(abs(e)-d)^2
