xdata = c(5,10,12,15,20,25,27,30,35)
quantile(xdata,0)
quantile(xdata,0.25)
quantile(xdata,0.5)
quantile(xdata,0.75)
quantile(xdata,1)

#All quantiles
quantile(xdata,probs = c(0,0.25,0.5,0.75,1))

summary(xdata)

boxplot(xdata,main="IQR",ylab="xdata")


# IQR
as.numeric(quantile(xdata,0.75)-quantile(xdata,0.25))

IQR(xdata)
