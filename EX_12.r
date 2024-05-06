head(mtcars)

model <- lm(mpg ~ wt,data = mtcars)
model
plot(mtcars$wt,mtcars$mpg)
abline(model,col = "red")

predict(model,newdata = data.frame(wt=6))

model$coefficients

model <- lm(mpg ~ wt + hp, data=mtcars)
summary(model)

x<-predict(model, newdata = data.frame(wt=2.5, hp=275))
x

coef(lm(mpg ~ wt + hp, data=mtcars))
coef(lm(mpg ~ wt, data=mtcars))
coef(lm(mpg ~ hp, data=mtcars))
