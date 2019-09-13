###Ch.7 Comparing Time-to-Event Data
##Ch.7.4 Weighted Log-Rank Test


#Purpose:Comparing Survival Curves(Si(T))
#H0:S1(t)=S2(t) vs #H1: S1(t) neq S2(t)

##Note
#1.Testing non-inferiority/superiority or equivalence is usually
   difficult because Si(t) is an infinite dimensional parameter
#2.As a result, we provide sample size calculation formula for testing
   equality only in this section

#Definition of Parameters

za=qnorm(0.05,0,1)
zb=qnorm(0.2,0,1)
zha=qnorm(0.025,0,1)
zhb=qnorm(0.1,0,1)

d=102
p1=0.837
p2=0.627

#di=the number of deaths within the ith interval
#d=sigma(di)->Summation of all deaths in ith interval
#rhoi=di/d
#pi=the cumulative event rates for the ith treatment group

##Tarone-Ware Test(Equality test for Weighted Log Rank Test)

#H0:S1=S2 #H1:S1 not equal to S2

n=2*d/(p1+p2)
n

n=9*(1.96+0.842)^2/((1-0.1111)+(1-0.3684))
n



