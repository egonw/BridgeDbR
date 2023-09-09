library(BridgeDbR)
context("simple")

test_that("it can find mappings", {
    location = paste(getwd(), "test.bridge", sep = "/")
    mapper <- loadDatabase(location)
    input = data.frame(
        source = c("Ik"),
        identifier = c("YECLLIMZHNYFCK-RRNJGNTNSA-J")
    )
    mappings <- maps(mapper, input)
    expect_equal(nrow(mappings), 3)
})

test_that("it can find mappings for a specific target", {
    location = paste(getwd(), "test.bridge", sep = "/")
    mapper <- loadDatabase(location)
    input = data.frame(
        source = c("Ik"),
        identifier = c("YECLLIMZHNYFCK-RRNJGNTNSA-J")
    )
    mappings <- maps(mapper, input, "Lm")
    expect_equal(nrow(mappings), 1)
})

test_that("it returns an empty data frame with a non-existing identifier", {
    location = paste(getwd(), "test.bridge", sep = "/")
    mapper <- loadDatabase(location)
    input = data.frame(
        source = c("Ik"),
        identifier = c("YECLLIMZHNYFCK-RRNJGNTNSA-A")
    )
    mappings <- maps(mapper, input)
    expect_equal(nrow(mappings), 0)
})
