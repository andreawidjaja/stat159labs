
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
})


test_that("range works as expected for vectors with T/F", {
        z <- c(TRUE, FALSE, TRUE)

        expect_length(range_value(z), 1)
        expect_type(range_value(z), 'integer')
	expect_equal(range_value(z), 1L)
})

test_that("range works as expected for vectors with Letters", {
        w <- letters[1:5]

        expect_error(range_value(w), throws_error())
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
	expect_equal(center-measures(x), c(5, 5))
	expect_length(center-measures(x), 2)
})


#Spread Measures
source("../functions/spread-measures.R")

context("Test for spread measures") 
test_that("center measures works as expected", {
	x <- c(1, 2, 3, 4)
	expect_equal(spread-measures(x), c(1, 4, 1.5, 1.290994))
	expect_length(spread-measures(x), 3)
})


#Descriptive Stats
source("../functions/descriptive-stats.R")

context("Test for Descriptive Stats") 
test_that("descriptive stats works as expected", {
	x <- c(1, 2, 3, 4)
	expect_equal(descriptive-stats(x), c(2, 2, 2, 1, 0, 2, 0))
	expect_length(descriptive-stats(x), 10)
})
