#!/usr/bin/Rscript

input <- file('stdin', 'r')
row1 <- readLines(input, n=1)
row2 <- readLines(input, n=1)
row3 <- readLines(input, n=1)
row4 <- readLines(input, n=1)
row5 <- readLines(input, n=1)
# row1 <- "95 85"
# row2 <- "85 95"
# row3 <- "80 70"
# row4 <- "70 65"
# row5 <- "60 70"
row1 <- c(as.numeric(unlist(strsplit(row1, split = " "))))
row2 <- c(as.numeric(unlist(strsplit(row2, split = " "))))
row3 <- c(as.numeric(unlist(strsplit(row3, split = " "))))
row4 <- c(as.numeric(unlist(strsplit(row4, split = " "))))
row5 <- c(as.numeric(unlist(strsplit(row5, split = " "))))
df <- data.frame()

for(i in 1:5){
  df <- rbind(df, c(get(paste0("row", i))[1], get(paste0("row", i))[2]))
}

regres <- lm(df[,2]~df[,1])
slope <- regres$coefficients[2]
int <- regres$coefficients[1]
answer <- slope*80+int
write(sprintf("%.3f", answer), "")
