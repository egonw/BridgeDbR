library(BridgeDbR)
context("simple")

test_that("it can load Derby files", {
    location = paste(getwd(), "test.bridge", sep = "/")
    db <- loadDatabase(location)
    expect_false(is.null(db))
})
