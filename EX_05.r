freq <- function(data,column){
  u <- unique(data[[column]])
  t <- table(data[[column]])
  print(t)
  barplot(t,xlab = "Temperature",ylab = "Frequency",main = "Frequency Distribution")
}
freq(mtcars,"carb")
freq(airquality,"Temp")

t <- table(cut(airquality$Temp,9))
barplot(t,xlab = "Temperature",ylab = "Frequency",main = "Frequency Distribution")
