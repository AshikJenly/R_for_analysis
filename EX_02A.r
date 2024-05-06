A <- matrix(data = c(3,4,5,6),nrow = 2,ncol = 2,byrow = TRUE)
B <- matrix(data = c(3,4,5,6),nrow = 2,ncol = 2,byrow = TRUE)

C <- rbind(c(1,2,3),c(6,4,2))
D <- cbind(c(1,2,4),c(6,5,2))


3 * A

C %*% D

diag(A)

t(C)

solve(A)
