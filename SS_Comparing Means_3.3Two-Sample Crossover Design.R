###Ch.3 Comparing Means
##Ch3.3 Two-Sample Crossover Design


#Definition of Parameters

za=qnorm(0.05,0,1)
zb=qnorm(0.2,0,1)
zha=qnorm(0.025,0,1)
zhb=qnorm(0.1,0,1)

e=-0.1
d=-0.2
s=0.2

#e=difference between the mean response of the test drug(u2) and 
   reference(u1)
#u2=the true mean response of a test drug
#u1=mean response of reference control
#s/(2*n)=sigma_m/(2*n) (s^2/(2*n)=variance of the e)
#d=non-inferiority/superiority margin(delta)

##Test for Equality
#H0:e=0 #H1:e not equal to 0

n=(zha+zb)^2*s^2/(2*e^2)
n

##Test for Non-Inferiority/Superiority
#H0:e<=d #H1: e>d 

##Note(When d>0, the rejection of null indicates superiority of
test drug against the control, d<0, the rejection of the null indicates
non-inferiority of the test drug over the control)

n=(za+zb)^2*s^2/(2*e^2)
n

##Test for Equivalence
#H0:abs(e)>=d #H1: abs(e)<d

n=(za+zhb)^2*s^2/(2*((abs(e)-d)^2))
n

