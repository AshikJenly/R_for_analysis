women

individual <- function(women,func){
  c11 = func(women$height, women$height)
  c12 = func(women$height, women$weight)
  c21 = func(women$weight, women$height)
  c22 = func(women$weight, women$weight)
  cm1 = matrix(data = c(c11,c12,c21,c22), nrow = 2, byrow = TRUE)
  print(cm1)
}
individual(women,cov)
individual(women,cor)

cov(women[,c("height","weight")])
cor(women)

cor(women,method = "pearson")
c = cor(women,method = "spearman")

scatter.smooth(women$height,women$weight)

#---------------------------------

cor(mtcars$wt,mtcars$mpg)
