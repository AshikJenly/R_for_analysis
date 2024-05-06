
getmatrix <- function(n,m)
{
  M <- matrix(NA,nrow = n,ncol = m)
  for(i in 1:n){
    for(j in 1:m)
    {
      M[i,j] <- as.integer(readline())
    }
  }

  return(M)
}


A <- getmatrix(as.numeric(readline("Enter n for A : ")),
               as.numeric(readline("Enter m for A : ")))

B <- getmatrix(as.numeric(readline("Enter n for B : ")),
               as.numeric(readline("Enter m for B : ")))

print("Matrix A")
A
print("Matrix B")
B

#Addition 
A + B
#Substraction
A - B
#Scalar Multiplication
3 * A
#Multiplication
A %*% B
# diag
diag(A)
#Transpose 
t(A)

