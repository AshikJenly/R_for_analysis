library(ggplot2)

head(precip)
precipitation <- rnorm(100000,mean=38)
stats <- numeric(10000)

statistic <- function(s,p)
{
  n_m = mean(s) - mean(p)
  d_m = sd(s) / sqrt(length(s))
  return(n_m/d_m)
}


for(i in 1:10000)
{
  stats[i] <- statistic(sample(precipitation,70),precipitation)
}
stats
qplot(x = stats,geom="histogram")


statistic(precip,precipitation)

t.test(precip, mu=38)
t.test(precip, mu=38, alternative="less")
