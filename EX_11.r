

head(mtcars)

mean(mtcars$mpg[mtcars$am == 0])
mean(mtcars$mpg[mtcars$am == 1])

mtcars.copy <- mtcars
mtcars.copy$transmission <- factor(ifelse(mtcars$am == 0,"auto","manual"))
qplot(transmission,mpg,data=mtcars.copy,geom = "boxplot",fill = transmission)

t.test(mtcars$mpg[mtcars$am == 0],mtcars$mpg[mtcars$am == 1],alternative = "less")
t.test(mpg ~ am,data=mtcars,alternative = "less")
