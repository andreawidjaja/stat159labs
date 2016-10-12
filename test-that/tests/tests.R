
#load source code of the functions to be tested
source("../functions/range-value.R")

context("Test for range value")

test_that("range works as expected", {
	x <- c(1, 2, 3, 4, 5)

	expect_equal(range_value(x), 4)
	expect_length(range_value(x), 1)
	expect_type(range_value(x), 'double')
})


test_that("range works as expected for vectors with NA", {
	y <- c(1, 2, 3, 4, NA)

	expect_length(range_value(y), 1)
        expect_equal(range_value(y), NA_real_)
	expect_equal(range_value(y, TRUE), 3)

})


test_that("range works as expected for vectors with T/F", {
        z <- c(TRUE, FALSE, TRUE)

        expect_length(range_value(z), 1)
        expect_type(range_value(z), 'integer')
	expect_equal(range_value(z), 1L)
})

test_that("range works as expected for vectors with Letters", {
        w <- letters[1:5]

        expect_error(range_value(w))
})


#---------------------------------------------------
#load source code of the functions to be tested
source("../functions/missing-values.R") 

#Missing Values

context("Test for missing value")
test_that("missing value functions works", {
        y <- c(1, 2, 3, 4, NA)

        expect_length(missing_values(y), 1)
        expect_type(missing_values(y), 'integer')
        expect_gte(missing_values(y), 0)
})
#sum of missing integer is single, cannot be double

#-------------------------------------

#improve range_value()
#expect_equal(range_value(y), 3)

#-----------------------------------------


#Extra Challenge

#Center Measures
source("../functions/center-measurers.R")

context("Test for Center Measures")
test_that("center measures works as expected", {
	x <- c(1, 2, 3, 4)
	expect_equal(center_measures(x), c(2.5, 2.5))
	expect_length(center_measures(x), 2)
})


#Spread Measures
source("../functions/spread-measures.R")

context("Test for Spread Measures") 
test_that("spread measures works as expected", {
	x <- c(1, 2, 3, 4)
	expect_equal(spread_measures(x), c(14, 1.5, 1.290994))
	expect_length(spread_measures(x), 4)
})


#Descriptive Stats
source("../functions/descriptive-stats.R")

context("Test for Descriptive Stats") 
test_that("descriptive stats works as expected", {
	x <- c(1, 2, 3, 4)
	expect_equal(descriptive_stats(x), c(2.5, 2.5, 14, 1.5, 1.290994, 0))
	expect_length(descriptive_stats(x), 6)
})
