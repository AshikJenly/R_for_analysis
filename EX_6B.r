library(mvtnorm)
hwdata <- cbind(c(165, 170, 160, 154, 175, 155, 167, 177, 158, 178),c(78, 71, 60, 53, 72, 51, 64, 65, 55, 69))

colMeans(hwdata)

mvtrain <- function(hwdata,testdata) {
  mv <- colMeans(hwdata)
  cv <- cov(hwdata)
  cat("Mean Vector: ", mv, "\n")
  cat("Covariance Matrix: \n", cv)
  
  # Generate a grid of height and weight values
  h_values <- seq(min(hwdata[, 1]) - 15, max(hwdata[, 1]) + 15, length.out = 100)
  w_values <- seq(min(hwdata[, 2]) - 15, max(hwdata[, 2]) + 15, length.out = 100)
  hw_grid <- expand.grid(Height = h_values, Weight = w_values)
  
  # Calculate the probability density for each combination of height and weight
  prob_density <- dmvnorm(hw_grid, mean = mv, sigma = cv)
  
  # Reshape the probability density matrix
  p_matrix <- matrix(prob_density, nrow = length(h_values))
  
  # Plot the 3D surface
  persp(h_values, w_values, p_matrix, col = "lightblue", xlab = "Height", ylab = "Weight", zlab = "Probability Density")
 
  pt <- dmvnorm(testdata, mean = mv, sigma = cv)
  
  print(pt)
  if (pt >= 0.00005)
    print("person is an adult based on H & W")
  else
    print("person is not an adult based on H & W")
}
  


mvtrain(hwdata,c(170,67))


