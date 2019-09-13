###Ch.7 Comparing Time-to-Event Data
##Ch.7.2 Exponential Model


#Definition of Parameters

za=qnorm(0.05,0,1)
zb=qnorm(0.2,0,1)
zha=qnorm(0.025,0,1)
zhb=qnorm(0.02,0,1)

#s1=sigma^2(l1) -> variance function of lambda1
#s2=sigma^2(l2) -> variance function of lambda2
#l1=lambda1(hazard rate for group1)
#l2=lambda2(hazard rate for group2)
#T0=Accural time period
#T=Total Trial Time
#e=lambda1-lambda2
#r=accural rate(r=0, uniform patient entry, r>0 fast patient entry at beginning)
#ni=sample size for group i
#k=n1/n2(sample size ratio between two groups)
#d=non-inferiority/superiority margin(delta)

T=3
T0=1
r=0
l1=1
l2=2
k=1
e=l2-l1
d=0.2

#Define Variance Function

#s1=(l1^2)*(1+(r*(exp(-l1*T))*(1-exp((l1-r)*T0))/((l1-r)*(1-exp(-r*T0)))^-1

a=r*(exp(-l1*T))*(1-exp((l1-r)*T0))
b=(l1-r)*(1-exp(-r*T0))

a2=r*(exp(-l2*T))*(1-exp((l2-r)*T0))
b2=(l2-r)*(1-exp(-r*T0))

s1=(l1^2)*(1+ (a/b))^-1

s2=(l2^2)*(1+ (a2/b2))^-1

#When r=0
a1=(exp(-l1*T))-exp(-l1*(T-T0))
b1=l1*T0

a2=((exp(-l2*T))-exp(-l2*(T-T0)))
b2=l2*T0

s1=(l1^2)*(1/(1+ (a1/b1)))
s1
s2=(l2^2)*(1/(1+ (a2/b2)))
s2

##Test for Equality

#H0:e=0 #H1:e not equal to 0

n2=((zha+zb)^2/(l2-l1)^2)*((s1/k)+s2)
n2

##Test for Non-Inferiority/Superiority

#H0:e<=d #H1: e>d

n2=((za+zb)^2/(e-d)^2)*((s1/k)+s2)
n2

##Test for Equivalence
#H0:abs(e)>=d #H1: abs(e)<d

n2=((za+zhb)^2/(d-abs(e))^2)*((s1/k)+s2)
n2

