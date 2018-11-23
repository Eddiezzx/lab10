#Q1

library(microbenchmark)

odd_count =function(x) {
  odd_num = 0
  for(i in 1:length(x)) {
    if(x[i]%%2==1) odd_num  = odd_num+1}
  return(odd_num)
  }



odd =function(x) {
  odd_num = 0 
  
   return(x%%2) 
    
  
  return(odd_num)}
x = seq(1, 100, by = 1)

microbenchmark(odd_count(x),odd(x))

#Q2

sort_vec = function(x, ascending = TRUE) {
  if (length(x) < 2) return (x)
  if (ascending == TRUE) {
  for (last in length(x) : 2) {
    for(first in 1 : (last - 1)) {
      if(x[first] < x[first + 1]) {
        temp = x[first]
        x[first] = x[first + 1]
        x[first + 1] = temp
      }
    }
  }
}
else {
  for (last in length(x) : 2) {
    for(first in 1 : (last - 1)) {
      if(x[first] < x[first + 1]) {
        temp = x[first]
        x[first] = x[first + 1]
        x[first + 1] = temp
      }
    }
  }
}
  
  return(x)
}
sort_vec(c(1,2))

#Q3
N = 1000
N1 = 10000
N2 = 1000000
data_series = 0
system.time({for (i in 2:N){
  data_series[i] = data_series[i-1] + sample(c(-1, 1), 1)
}
})

data_series = 0
system.time({for (i in 2:N1){
  data_series[i] = data_series[i-1] + sample(c(-1, 1), 1)
}
})

data_series = 0
system.time({for (i in 2:N2){
  data_series[i] = data_series[i-1] + sample(c(-1, 1), 1)
}
})


#prealocated

data_series1 = rep(NA, N)
system.time({for (i in 2:N){
  data_series[i] = data_series[i-1] + sample(c(-1, 1), 1)
}
})




data_series1 = rep(NA, N1)
system.time({for (i in 2:N1){
  data_series[i] = data_series[i-1] + sample(c(-1, 1), 1)
}
})



data_series1 = rep(NA, N2)
system.time({for (i in 2:N2){
  data_series[i] = data_series[i-1] + sample(c(-1, 1), 1)
}
})

ALLn<-c(1000,10000,1000000)
dynamicallyallocated<-c(0.01,0.06,6.27)
preallocated<-c(0,0.09,5.85)

answer<-rbind(ALLn,dynamicallyallocated,preallocated)
answer
