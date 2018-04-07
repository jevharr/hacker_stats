#!/usr/bin/Rscript

input <- file('stdin', 'r')
row1 <- readLines(input, n=1)
row2 <- readLines(input, n=1)
nums <- c(as.numeric(unlist(strsplit(row2, split = " "))))
avg <- mean(nums)
stdDev <- sprintf("%.1f", sqrt(sum((nums-avg)^2)/length(nums)))
write(stdDev, "")