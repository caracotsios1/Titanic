train <- read.csv("Data/train.csv")
## mean(x, na.rm = TRUE) will calculate mean with only non NA valies


## loop through columns, how can I do with just one if statement and not 2?, it did not
## work when I just used 1
for(i in 1:ncol(train))
  {
  tempCol <- train[,i]
  if((is.numeric(tempCol) == TRUE) & (is.integer(tempCol) == FALSE))
  {
    tempMean <- mean(tempCol, na.rm = TRUE)
    print(paste("Mean of", colnames(train[i]), "is", tempMean))
    tempMedian <- median(tempCol, na.rm = TRUE)
    print(paste("Median of", colnames(train[i]), "is", tempMedian))
  }

}


