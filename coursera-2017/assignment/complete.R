complete <- function(directory, id = 1:332){
  
  df <- data.frame(id = numeric(), nobs = numeric())
  
  for (i in id) {
    #formatting the numbers 
    name <- sprintf("%03d", i)
    #formatting file names
    file <- paste0(name, ".csv")
    myData <- read.csv(file.path(directory, file))
    noNa <- myData[complete.cases(myData), ]
    row <- nrow(noNa)
    df <- rbind(df, data.frame(id = i, nobs = row))
  }
  
  df
}

