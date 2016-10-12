spread_measures <- function(x){
  return(c("range" = range(x), "IQR" = IQR(x), "Std Dev" = sd(x)))
}
