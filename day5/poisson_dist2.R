# poisson distribution II

input <- file('stdin', 'r')
row1 <- readLines(input, n=1)
# row1 <- ".88 1.55"
row1 <- c(as.numeric(unlist(strsplit(row1, split = " "))))
lambda1 <- as.numeric(row1[1])
lambda2 <- as.numeric(row1[2])
k <- 1

b <- dpois(k, lambda1)
Acost <- 160+40*(lambda1 + lambda1^2)
write(sprintf("%.3f", Acost), "")

b <- dpois(k, lambda2)
Bcost <- 128+40*(lambda2 + lambda2^2)
write(sprintf("%.3f", Bcost), "")
