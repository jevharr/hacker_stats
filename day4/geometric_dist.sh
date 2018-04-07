#!/usr/bin/Rscript
#geometric distribution II

input <- file('stdin', 'r')
row1 <- readLines(input, n=1)
row2 <- readLines(input, n=1)
line1 <- c(as.numeric(unlist(strsplit(row1, split = " "))))
line2 <- as.numeric(row2)
n <- line2
p <- line1[1]/line1[2]
q <- 1-p

b <- sum(`^`(q, (n-1))*p)
write(sprintf("%.3f", b), "")