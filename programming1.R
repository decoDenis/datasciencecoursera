pollutantmean <- function(directory, pollutant, id = 1:332){
  ##directory is a character vector indicating the location of the CSV files

  files_full <- list.files(directory, full.names = TRUE)
  
  dat <- data.frame()
  for (i in id) {
    dat <- rbind(dat, read.csv(files_full[i]))
  }
  
  dat_subnet <- dat[[pollutant]]
  mean(dat_subnet, na.rm=TRUE)
}
