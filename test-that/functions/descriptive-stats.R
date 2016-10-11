descriptive-stats = function(x){
  return(c("median" = median(x), "mean" = mean(x), 
           "range" = range(x), "IQR" = IQR(x), "Std Dev" = sd(x), 
           "NAs" = sum(is.na(x))))
}
