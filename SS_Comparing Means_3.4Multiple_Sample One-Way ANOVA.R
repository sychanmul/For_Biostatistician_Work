###Ch.3 Comparing Means
##Ch3.4 Multi-Sample One-Way ANOVA

#Definition of Parameters

za_2t=qnorm(0.05,0,1) #a_2t -> alpha/(2t)
zb=qnorm(0.2,0,1)
zha=qnorm(0.025,0,1)
zhb=qnorm(0.1,0,1)

#ui=mean of treatment i
#eij=ui-uj
#t=number of comparisons of interest, where t <= k*(k-1)/2
#k=number of treatment group(i=1,...,k)
#s=sigma(s^2=variance of eij, (sigma_hat)^2=SSE/(k*(n-1)) )

#l=lambda(the non-centrality parameter of non-central chi-square distribution)
#ubar=mu_bar((1/k)*summation(j=1 to k) uj))
#delta=(1/s^2)*summation(i=1 to k){ui-ubar)^2


####Pairwise comparison
#H0:ui=uj #H1:ui not equal to uj for some pairs (i,j)
#The sample size to achieve power 1-beta in for deteting
 a clinically meaningful difference between ui and uj is
 n=max{nij, for all interested comparison}

nij=2*(za_2t+zb)^2*s^2/eij^2


####Simultaneous Comparison
#H0:u1=u2=...=uk #H1:ui not equal to uj for some 1<=i<j<=k

n=lambda/delta