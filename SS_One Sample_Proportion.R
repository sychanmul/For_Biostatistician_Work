#Definition of Parameters

za=qnorm(0.025,0,1)
za
zb=qnorm(0.2,0,1)
zb
z_ha=qnorm(0.025,0,1)
z_hb=qnorm(0.1,0,1)

#p=true response reate
#p0=reference value
#e=p-p0

p=0.89
p0=0.70

##e=p-p0

e=0

d=0.19

##One sample Equality

#H0:p=p0 #H1:p not equal to p0

n=(z_ha+zb)^2*p*(1-p)/e^2
n

##One sample Non-Inferiority/Superiority

#H0:e<=d #H1: e>d 

##Note:
#When d>0, the rejection of H0 -> Superiority over the reference value
#When d<0, the rejection of H0 -> Non-inferiority against the reference value

n=(za+zb)^2*p*(1-p)/(e-d)^2
n

n/0.9

##One sample Equivalence

#H0:abs(e)>=d #H1: abs(e)<d

#$Note:
#The proportion of the responses is concluded to be equivalent 
#to the reference value of p0 if the H0 is rejected at a given significance
#level

n=(za+z_hb)^2*p*(1-p)/(d-abs(e))^2

##One sample Alternative Formula

za=qnorm(0.025,0,1)
za
zb=qnorm(0.2,0,1)
zb
z_ha=qnorm(0.025,0,1)
z_hb=qnorm(0.1,0,1)

p0=0.85
p=0.941
e=p-p0

n=(((z_ha*(p0*(1-p0))^0.5)+(zb*(p*(1-p))^0.5))/e)^2
n


