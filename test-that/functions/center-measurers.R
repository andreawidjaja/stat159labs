center_measures <- function(x){
  median = median(x)
  mean = mean(x)
  return(as.numeric(c("median" = median, "mean" = mean)))
}
