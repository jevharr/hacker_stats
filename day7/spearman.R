#!/usr/bin/Rscript

input <- file('stdin', 'r')
row1 <- readLines(input, n=1)
row2 <- readLines(input, n=1)
row3 <- readLines(input, n=1)
# row1 <- "10"
# row2 <- "10 9.8 8 7.8 7.7 1.7 6 5 1.4 2 "
# row3 <- "200 44 32 24 22 17 15 12 8 4"
row1 <- as.numeric(row1)
row2 <- c(as.numeric(unlist(strsplit(row2, split = " "))))
row3 <- c(as.numeric(unlist(strsplit(row3, split = " "))))

n <- row1
spearman <- cor(x = row2, y = row3, use = "all.obs", method = "spearman")
write(sprintf("%.3f", spearman), "")
