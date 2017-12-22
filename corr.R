corr <- function(directory, threshold = 0){
  
    filenames <- complete(directory)
    fileNamesCorrelate <- filenames[filenames$nobs > threshold,]
    vectCorr <- as.numeric()
    
    for(i in fileNamesCorrelate$id){
      
      fileName <- sprintf("%03i.csv", i)
      pathFile <- file.path(directory, fileName)
      file <- read.csv(pathFile)
      
      cleanFile <- na.omit(file)
      correlation <- cor(cleanFile$sulfate, cleanFile$nitrate)
      vectCorr <- c(vectCorr, correlation)
      
    }
    
    vectCorr
}