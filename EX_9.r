male<-c(165,170,160,154,175,155,167,177,158,178)
female<-c(140,145,149,152,157,135,139,160,155,163)

getpdf <- function(d,data,test){
  
  pdf <- dnorm(d,mean(data),sqrt(var(data)))
  pt <- dnorm(test,mean(data),sqrt(var(data)))
  return(list(d = d,pdf = pdf,pt = pt))
}
bayes.fitpredict <- function(male_train,female_train,test_data)
{
    d <- seq(min(min(male_train),min(female_train)) - 15,max(max(male_train),max(male_train)) +15)
    male_pdf = getpdf(d,male_train,test_data)
    female_pdf = getpdf(d,female_train,test_data)
    
    plot(male_pdf$d, male_pdf$pdf, type = "l", col = "red", xlab = "Height", ylab = "Probability", main = "Probability Distribution of Height and Gender")
    lines(female_pdf$d, female_pdf$pdf, col = "blue")
    
    if(male_pdf$pt > female_pdf$pt)
      print("The given Height of Person is Male")
    else
      print("The given Height of Person is Female")
}

bayes.fitpredict(male,female,140)
