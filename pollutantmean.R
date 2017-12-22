pollutantmean <- function(directory, polluntant, id = 1:332){
  
  vec <- as.numeric()
  
  for(i in id){
    d <- sprintf("%03i.csv", i)
    pathFile <- file.path(directory,d)
    csvfile <- read.csv(pathFile)
    vec <- c(vec, csvfile[,polluntant])
  }   
   mean(vec, na.rm = TRUE)
}