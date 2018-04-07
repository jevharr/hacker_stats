#!/usr/bin/Rscript

input <- file('stdin', 'r')
row1 <- readLines(input, n=1)
row2 <- readLines(input, n=1)
row3 <- readLines(input, n=1)
row4 <- readLines(input, n=1)
row5 <- readLines(input, n=1)
# row1 <- "100"
# row2 <- "500"
# row3 <- "80"
# row4 <- ".95"
# row5 <- "1.96"
row1 <- as.numeric(row1)
row2 <- as.numeric(row2)
row3 <- as.numeric(row3)
row4 <- as.numeric(row4)
row5 <- as.numeric(row5)

n <- row1
mu <- row2
sigma <- row3
ci <- row4
const <- row5

# p <- pnorm(tix, mean = n*mu, sd = sqrt(n)*sigma, lower.tail = T)
error <- const*sigma/sqrt(n)
left <- mu - error
right <- mu + error
write(sprintf("%.2f", left), "")
write(sprintf("%.2f", right), "")
