range_value <- function(x, na.rm = FALSE) {
	if (na.rm){
		x = x[!is.na(x)]
	}
	max(x) - min(x)
}


#### before updated
#range_value <- function(x) {
#  max(x) - min(x)
#}
