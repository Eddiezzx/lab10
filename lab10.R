

#
Q2 = function(n, d, sd, sig.level) {
power =  t.test(x = rnorm(n, delta, sd))$p.value)
rep_power = mean(replicate(1000,rep_power))
return(rep_power)
}

Q2(n = 30, d = 0.5, sd = 1, sig.level = 0.05)
power.t.test(n = 30, delta = 0.5, sd = 1, sig.level = 0.05, type = "one.sample")


