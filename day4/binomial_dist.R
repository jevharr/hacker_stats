# geometric distribution I
# input: 1 3
# input: 5
#output: 
#0.868


# input <- file('stdin', 'r')
# row1 <- readLines(input, n=1)
#row1 <- "1 3"
#row2 <- "5"
line1 <- c(as.numeric(unlist(strsplit(row1, split = " "))))
line2 <- as.numeric(row2)
n <- 1:line2
p <- line1[1]/line1[2]
q <- 1-p

b <- sum(`^`(q, (n-1))*p)
# b <- 1-(1-(p))**line2
write(sprintf("%.3f", b), "")
