library(BridgeDbR)
context("simple")

test_that("it knows about ChEBI", {
    dataSource = getFullName("Ce")
    expect_equal(dataSource, "ChEBI")
})
