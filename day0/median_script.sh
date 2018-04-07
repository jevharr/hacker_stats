#!/usr/bin/Rscript

input <- file('stdin', 'r')
row1 <- readLines(input, n=1)
row2 <- readLines(input, n=1)
nums <- c(as.numeric(unlist(strsplit(row2, split = " "))))
write(mean(nums), "")
write(median(nums), "")
write(names(sort(-table(nums)))[1], "")