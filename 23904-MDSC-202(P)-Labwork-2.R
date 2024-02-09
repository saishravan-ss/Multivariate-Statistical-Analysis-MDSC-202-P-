A <- matrix(c(13, -4, 2, -4, 11, -2, 2, -2, 8), 3, 3, byrow=TRUE)    # initializing the matrix
A                                                                    # printing the matrix
eigenvalues <- eigen(A)                                              # finding the eigen values and eigen vectors of a matrix A
eigenvalues <- eigen(A)$values                                       # considering only eigen values
eigenvectors <- eigen(A)$vectors                                     # considering only eigen vectors
print('These are eigen values:')
eigenvalues                                                          # printing the eigen values
print('These are eigen vectors:')
eigenvectors                                                         # printing the eigen vectors
normalized_vectors <- eigenvectors / sqrt(rowSums(eigenvectors^2))   # calculating the normalized eigen vectors
print('These are normalized eigen vectors:')
normalized_vectors                                                   # printing the normalized eigen vectors.