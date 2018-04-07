#!/usr/bin/Rscript

input <- file('stdin', 'r')
row1 <- readLines(input, n=1)
row2 <- readLines(input, n=1)
row3 <- readLines(input, n=1)
# row1 <- "9800"
# row2 <- "49"
# row3 <- "205"
# row4 <- "15"
row1 <- as.numeric(row1)
row2 <- as.numeric(row2)
row3 <- as.numeric(row3)
row4 <- as.numeric(row4)
wt <- row1[1]
n <- row2
mu <- row3
sigma <- row4

p <- pnorm(wt, mean = n*mu, sd = sqrt(n)*sigma, lower.tail = T)
write(sprintf("%.4f", p), "")
