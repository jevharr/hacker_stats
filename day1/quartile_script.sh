#!/usr/bin/Rscript

#input:
#20
#10 40 30 50 20 10 40 30 50 20 1 2 3 4 5 6 7 8 9 10
#1 2 3 4 5 6 7 8 9 10 10 40 30 50 20 10 40 30 50 20
#output:
#5.0
options(digits=5)
input <- file('stdin', 'r')
row1 <- readLines(input, n=1)
row2 <- readLines(input, n=1)
row3 <- readLines(input, n=1)
nums2 <- c(as.numeric(unlist(strsplit(row2, split = " "))))
nums3 <- c(as.numeric(unlist(strsplit(row3, split = " "))))
set <- rep(nums2, nums3)
set <- set[order(set)]
iqr <- as.numeric(diff(quantile(set, type = 2)[c(2,4)]))
write(sprintf("%.1f", iqr), "")