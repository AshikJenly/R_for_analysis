
#Initialize Data
hdata <- c(165, 170, 160, 154, 175, 155, 167, 177, 158, 178)

model.fitpredict <- function(train_data,test_data)
{
  hdata <- seq(min(train_data)-15,max(train_data) + 15)
  train_pdf <- dnorm(hdata,mean(hdata),sqrt(var(hdata)))
  plot(hdata,train_pdf)
  
  test_pdf <- dnorm(test_data,mean(hdata),sqrt(var(hdata)))
  print(test_pdf)
  if(test_pdf > 0.0005)
    print("The given height of person is an adult")
  else
    print("The given height of person is not an adult")
  
}

h = as.numeric(readline(prompt = "Enter height : "))
model.fitpredict(hdata,h)

                 