# Define the matrix
A <- matrix(data = c(10, 2, 3, 2, 9, 1, 3, 1, 8), nrow = 3, ncol = 3, byrow = TRUE)
print(A)

# Spectral decomposition method
sqrt_A <- function(A) {
  eig <- eigen(A)
  V <- eig$vectors
  D_sqrt <- diag(sqrt(eig$values))
  return(V %*% D_sqrt %*% solve(V))
}

# Calculate the square root of A
sqrt_A <- sqrt_A(A)
print("Square root of A:")
print(sqrt_A)
