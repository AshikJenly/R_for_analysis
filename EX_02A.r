A <- matrix(data = c(3,4,5,6),nrow = 2,ncol = 2,byrow = TRUE)
B <- matrix(data = c(3,4,5,6),nrow = 2,ncol = 2,byrow = TRUE)

C <- rbind(c(1,2,3),c(6,4,2))
D <- cbind(c(1,2,4),c(6,5,2))

print("scalar multiplication")
3 * A

print("multiplication of 2 matrix")
C %*% D

print("diagonal")
diag(A)

print("transpose")
t(C)

print("inverse of matrix")
solve(A)
