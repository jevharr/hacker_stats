#!/usr/bin/Rscript
#geometric distribution II

input <- file('stdin', 'r')
row1 <- readLines(input, n=1)
row2 <- readLines(input, n=1)
line1 <- as.numeric(row1)
line2 <- as.numeric(row2)
lambda <- line1
k <- line2

b <- dpois(k, lambda)
write(sprintf("%.3f", b), "")