library(BridgeDbR)
context("simple")

test_that("it knows about ChEBI", {
    dataSource = getSystemCode("ChEBI")
    expect_equal(dataSource, "Ce")
})
