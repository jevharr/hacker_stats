#!/usr/bin/Rscript

input <- file('stdin', 'r')
row1 <- readLines(input, n=1)
row2 <- readLines(input, n=1)
row3 <- readLines(input, n=1)
row4 <- readLines(input, n=1)
# row1 <- "250"
# row2 <- "100"
# row3 <- "2.4"
# row4 <- "2.0"
row1 <- as.numeric(row1)
row2 <- as.numeric(row2)
row3 <- as.numeric(row3)
row4 <- as.numeric(row4)
tix <- row1[1]
n <- row2
mu <- row3
sigma <- row4

p <- pnorm(tix, mean = n*mu, sd = sqrt(n)*sigma, lower.tail = T)
write(sprintf("%.4f", p), "")
