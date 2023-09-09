library(BridgeDbR)
context("simple")

test_that("it can find identifers in the mapping file", {
    location = paste(getwd(), "test.bridge", sep = "/")
    mapper <- loadDatabase(location)
    expect_true(exists(mapper, "Lm", "LMFA07050035"))
    expect_true(exists(mapper, "Ik", "YECLLIMZHNYFCK-RRNJGNTNSA-J"))
})
