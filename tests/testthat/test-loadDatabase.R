library(BridgeDbR)
context("simple")

test_that("it can load Derby files", {
    db <- loadDatabase("test.bridge")
})
