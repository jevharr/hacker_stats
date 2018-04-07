#!/usr/bin/Rscript
#binomial distribution II
#input: 12 10
#output: 
#0.891
#0.342

input <- file('stdin', 'r')
row1 <- readLines(input, n=1)
line1 <- c(as.numeric(unlist(strsplit(row1, split = " "))))
x <- 0:2
n <- line1[2]
p <- line1[1]/100
q <- 1-p

b <- sum(((factorial(n))/(factorial(x)*factorial(n-x)))*`^`(p, x)*`^`(q, (n-x)))
write(sprintf("%.3f", b), "")
x <- 2:10
b <- sum(((factorial(n))/(factorial(x)*factorial(n-x)))*`^`(p, x)*`^`(q, (n-x)))
write(sprintf("%.3f", b), "")