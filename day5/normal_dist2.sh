#!/usr/bin/Rscript

input <- file('stdin', 'r')
row1 <- readLines(input, n=1)
row2 <- readLines(input, n=1)
row3 <- readLines(input, n=1)
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

a1 <- pnorm(value1, mean = mu, sd = sigma, lower.tail = F)
a3 <- pnorm(value2, mean = mu, sd = sigma, lower.tail = T)
a2 <- 1-a3

write(sprintf("%.3f", a1), "")
              
write(sprintf("%.3f", a2), "")

write(sprintf("%.3f", a3), "")