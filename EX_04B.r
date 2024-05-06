head(iris)
dim(iris)

xdata = iris$Sepal.Length
quantile(xdata,prob=c(0,0.25,0.5,0.75,1))
summary(xdata)
boxplot(xdata)

# IQR
as.numeric(quantile(xdata,0.75)-quantile(xdata,0.25))
IQR(xdata)
