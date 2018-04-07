#!/usr/bin/Rscript

input <- file('stdin', 'r')
row1 <- readLines(input, n=1)
# row1 <- "70 10"
# row2 <- "80"
# row3 <- "60"
row1 <- c(as.numeric(unlist(strsplit(row1, split = " "))))
row2 <- as.numeric(row2)
row3 <- as.numeric(row3)
mu <- row1[1]
sigma <- row1[2]
value1 <- row2
value2 <- row3

write(sprintf("%.3f", pnorm(value1, mean = mu, sd = sigma, lower.tail = F)), "")
              
write(sprintf("%.3f", pnorm(value2, mean = mu, sd = sigma, lower.tail = F)), "")

write(sprintf("%.3f", pnorm(value2, mean = mu, sd = sigma)), "")