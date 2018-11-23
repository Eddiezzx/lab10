


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
