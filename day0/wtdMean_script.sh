#!/usr/bin/Rscript

input <- file('stdin', 'r')
row1 <- readLines(input, n=1)
row2 <- readLines(input, n=1)
row3 <- readLines(input, n=1)
nums <- c(as.numeric(unlist(strsplit(row2, split = " "))))
wts <- c(as.numeric(unlist(strsplit(row3, split = " "))))
wtdMean <- sprintf("%.1f", sum((nums * wts))/sum(wts))
write(wtdMean, "")