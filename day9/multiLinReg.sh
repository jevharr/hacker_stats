#!/usr/bin/Rscript
library(tidyr)


f <- file("stdin")
open(f)
input <- c()
while(length(line <- readLines(f,n=1, warn = FALSE)) > 0) {
  input <- c(input, line)
}
# input <- readLines(file('day9/test0'))
chars <- nchar(input)
startRows <- which(chars<mean(chars/2))
trainDims <- c(as.numeric(unlist(strsplit(input[1], split = " "))))
train <- data.frame(input[(startRows[1]+1):(startRows[2]-1)])
test <- data.frame(input[(startRows[2]+1):length(input)])
train <- separate(train, 1, into = LETTERS[1:(trainDims[1]+1)], sep = "\\ ", fill="right")
test <- separate(test, 1, into = LETTERS[1:(trainDims[1])], sep = "\\ ", fill="right")
test <- apply(test, c(1,2), as.numeric)
Y <- as.numeric(train[,length(train)])
train <- train[,1:(length(train)-1)]



form <- "lm(Y ~ as.numeric(train[,1])"
for(i in 2:length(train)){
  if(i != length(train)){
    form <- paste0(form, " + as.numeric(train[,", i, "])")
  } else form <- paste0(form, " + as.numeric(train[,", i, "]))")
}

model <- eval(parse(text = form))
answer <- model$coefficients[1]+(test%*%as.matrix(model$coefficients[-1]))

write(sprintf("%.2f", answer), "")

