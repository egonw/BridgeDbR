library(BridgeDbR)
context("simple")

test_that("it knows about ChEBI", {
    answer = fullNameExists("ChEBI")
    expect_equal(answer, TRUE)
})

test_that("it reports false when the resource does not exist", {
    answer = fullNameExists("Sourcy McSourceface")
    expect_equal(answer, FALSE)
})

