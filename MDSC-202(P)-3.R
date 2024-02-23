set.seed(456)
new_data <- matrix(sample(1:100, 30, replace = TRUE), nrow = 15, ncol = 2)
print(new_data)
a <- new_data[, 1]
b <- new_data[, 2]
# Finding Mean
mean_a <- mean(a)
mean_b <- mean(b)
# Finding Variance
var_a <- sum((a - mean_a)^2) / (length(a) - 1)
var_b <- sum((b - mean_b)^2) / (length(b) - 1)
print(var_a)
print(var_b)
# Finding Covariance
covariance_ab <- sum((a - mean_a) * (b - mean_b)) / (length(a) - 1)
print(covariance_ab)
# Finding  Correlation
correlation_ab <- covariance_ab / (sqrt(var_a) * sqrt(var_b))
print(correlation_ab)
# Finding Covariance matrix
covariance_matrix_ab <- matrix(c(var_a, covariance_ab, covariance_ab, var_b), nrow = 2, byrow = TRUE)
# Finding Correlation matrix
correlation_matrix_ab <- matrix(c(1, correlation_ab, correlation_ab, 1), nrow = 2, byrow = TRUE)
print("Covariance Matrix:")
print(covariance_matrix_ab)
print("Correlation Matrix:")
print(correlation_matrix_ab)