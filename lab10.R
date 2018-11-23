

#1
cdf_binom = function(q, size, prob) {
 pb<-0
 
  for (i in 1:q) {
    db = choose(size, i) * prob^i * (1 - prob)^(size - i)
 pb =db+pb
  }
  return(pb)
}

cdf_binom(q=5,size= 6, prob=0.5)
pbinom(q=5, size=6, prob=0.5)

#2
power<- function(n,delta,sd,sig.level){
  sum<-0
    for (i in 1:10000){
      t<-t.test(rnorm(n,delta,sd))
       if(t$p.value<sig.level){
      sum <-sum + 1
    }
  }
  return(sum/10000)
}

power(n=30,delta=0.5,sd=1,0.05)
power.t.test(n=30,delta=0.5,sd=1,type='one.sample')
