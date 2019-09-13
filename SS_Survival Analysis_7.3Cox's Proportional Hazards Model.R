###Ch.7 Comparing Time-to-Event Data
##Ch.7.3 Cox's Proportional Hazards Model

#Definition of Parameters

za=qnorm(0.05,0,1)
zb=qnorm(0.2,0,1)
zha=qnorm(0.025,0,1)
zhb=qnorm(0.1,0,1)

#b=coefficient vector of Cox's proportional hazards model (h(t|z)=h(t|0)e^b'z)
#pi=the proportion of patients in the ith treatment group
#li(t)=hazard of group i(lambda i)
#fi(t)=density of survival function of group i
#Fi(t)=distribution function of survival in group i

b=0
p1=0.5
p2=0.5
d=0.8
delta=0.5

##Test for Equality

#H0:b=b0 #H1: b not equal to b0

#d=probability of observing an event(integral 0 to inf,V(t) dt)

n=(zha+zb)^2/((b^2)*p1*p2*d)
n

##Test for Non-Inferiority/Superiority

#delta=non-inferiority/superiority margin(delta)
#d=probability of observing an event(integral 0 to inf,V(t) dt)

#H0:b<=delta #H1: b>delta

n=(za+zb)^2/(((b-delta)^2)*p1*p2*d)
n

##Test for Equivalence

#H0:abs(b)>=delta #H1: abs(b)<delta

#delta=non-inferiority/superiority margin(delta)
#d=probability of observing an event(integral 0 to inf,V(t) dt)

n=(za+zhb)^2/(((delta-abs(b))^2)*p1*p2*d)
n





