corr <- function(directory, threshold = 0){
  files_full <- list.files(directory, full.names = TRUE)
  
  # Create an empty vector to store correlations
  correlations <- numeric()
  
  for (i in 1:332) {
    # Read the data file
    data <- read.csv(files_full[i])
    
    # Calculate the number of complete cases
    complete_cases <- sum(complete.cases(data))
    
    # Check if the number of complete cases meets the threshold
    if (complete_cases > threshold) {
      # Calculate the correlation between sulfate and nitrate
      correlation <- cor(data$sulfate, data$nitrate, use = "pairwise.complete.obs")
      correlations <- c(correlations, correlation)
    }
  }
  
  # Return the vector of correlations
  correlations
  
}