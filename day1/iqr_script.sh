#!/usr/bin/Rscript

input <- file('stdin', 'r')
row1 <- readLines(input, n=1)
row2 <- readLines(input, n=1)
row3 <- readLines(input, n=1)
nums2 <- c(as.numeric(unlist(strsplit(row2, split = " "))))
nums3 <- c(as.numeric(unlist(strsplit(row3, split = " "))))
set <- rep(nums2, nums3)
set <- set[order(set)]
lowset <- set[set<median(set)]
hiset <- set[set>median(set)]

if(length(lowset)%%2 == 0){
  mid <- length(lowset)/2
  lower <- mean(c(lowset[mid], lowset[mid+1]))
} else {
  lower <- median(set[set<median(set)])
}
if(length(hiset)%%2 == 0){
  mid <- length(hiset)/2
  upper <- mean(c(hiset[mid], hiset[mid+1]))
} else {
  upper <- median(set[set>median(set)])
}
write(sprintf("%.1f", upper - lower), "")