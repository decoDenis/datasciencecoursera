complete <- function(directory, id = 1:332){
  files_full <- list.files(directory, full.names = TRUE)
  
  result <- data.frame(id = integer(), nobs = integer())
  
  for (i in id) {
    dat <- read.csv(files_full[i])
    complete_cases <- sum(complete.cases(dat))
    
    result <- rbind(result, data.frame(id=i, nobs = complete_cases))
  }
  
  result
}