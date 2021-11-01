cc <- function(directory, id){
  dir <- paste(getwd(), "/", directory, "/", sep = "")
  file <- list.files(dir)
  df <- data.frame()
  for (i in id){
    files <- paste(dir, file[i], sep = "")
    read <- read.csv(files)
    nobs <- sum(complete.cases(read))
    dat <- data.frame(i, nobs)
    df <- rbind(df, dat)
  }
  return(df)
}