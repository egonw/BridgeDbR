library(BridgeDbR)
context("simple")

test_that("it knows about the ChEBI system code", {
    answer = systemCodeExists("Ce")
    expect_equal(answer, TRUE)
})

test_that("it reports false when the system code does not exist", {
    answer = systemCodeExists("Not")
    expect_equal(answer, FALSE)
})

