head(iris)

#Covariance
cov(iris[,-5])

#Correlation (Pearson)
pc = cor(iris[,-5])
pc

# Spearsman Correlation
sc = cor(iris[,-5],method = "spearman")
sc

if(sc[4,1] > 0){
  print("Relation between Petal Length and Sepal Width is Positive")
}
else{
  print("Relation between Petal Length and Sepal Width is Negative")
}

install.packages("corrgram")
library(corrgram)

qplot(iris$Species,iris$Petal.Length,geom = "boxplot",fill=iris$Species)
qplot(iris$Petal.Length,geom = "density",fill=iris$Species)
corrgram(iris,lower.panel = panel.conf,upper.panel = panel.pts)
corrgram(iris,lower.panel = panel.pie,upper.panel = panel.pts,diag.panel = panel.density,main = paste("corrgram of petal and sepal"))
