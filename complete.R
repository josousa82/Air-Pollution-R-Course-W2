complete <- function(directory, id= 1:332){
  
    pathFile <- file.path(getwd(), directory)
    filesInDirectory <- list.files(pathFile)
    filesToRead <- filesInDirectory[id]
    vecNobs <- as.numeric()

    for(i in filesToRead ){
       path <- file.path(pathFile, i)
       fileRead <- read.csv(path)
       vecNobs <- c(vecNobs, nrow(na.omit(fileRead)))
        
      
    }
    dataFrameFinal <- data.frame(id = id, nobs = c(vecNobs))
    #print(dataFrameFinal)
    
          
}