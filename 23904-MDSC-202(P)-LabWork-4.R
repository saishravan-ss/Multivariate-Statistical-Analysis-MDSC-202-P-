df <- read.csv("apple_quality.csv")
df <- dataset[, !colnames(df) %in% c('A_id')]
df$Quality <- as.numeric(factor(df$Quality, levels = c("bad", "good")))
mean_vector <- colMeans(df)
cov_mat <- matrix(NA, nrow = ncol(df), ncol = ncol(df))
for (i in 1:ncol(df)) {
  for (j in 1:ncol(df)) {
    cov_matrix[i, j] <- sum((df[, i] - mean_vector[i]) * (df[, j] - mean_vector[j])) / (nrow(df) - 1)
  }
}
std_dev_vec <- sqrt(diag(cov_mat))
cor_mat <- cov_matrix / (std_dev_vector %*% t(std_dev_vec))
print("Covariance Matrix is as follows :")
print(cov_mat)
print("Correlation Matrix is as follows :")
print(cor_mat)