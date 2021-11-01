pollutantmean <- function(directory, pollutant, id){
  dir <- paste(getwd(),"/",directory,"/",sep="")
  file <- list.files(dir)
  df <- data.frame()
  for (i in id) {
    
    files <- paste(dir,file[i],sep="")
    read <- read.csv(files)
    
    
    df <- rbind(df,read)
  }
  means <- mean(df[,pollutant], na.rm = TRUE)
  return(means)
} 