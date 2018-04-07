#!/usr/bin/Rscript
#binomial distribution I

input <- file('stdin', 'r')
row1 <- readLines(input, n=1)
line1 <- c(as.numeric(unlist(strsplit(row1, split = " "))))
x <- 3:6
n <- 6
p <- line1[1]/(line1[1]+line1[2])
q <- 1-p

b <- sum(factorial(n)/(factorial(x)*factorial(n-x))*`^`(p, x)*`^`(q, (n-x)))
write(sprintf("%.3f", b), "")