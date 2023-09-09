library(BridgeDbR)
context("simple")

test_that("it knows about ChEBI", {
    dataSource <- getDataSource("ChEBI")
    expect_false(is.null(dataSource))
    expect_equal(dataSource$getSystemCode(), "Ce")
})

test_that("it doesn't know about Ce, the system code for ChEBI", {
    dataSource <- getDataSource(code = "Ce")
    expect_false(is.null(dataSource))
    expect_equal(dataSource$getSystemCode(), "Ce")
})

test_that("it knows the Bioregistry.io prefix for ChEBI", {
    dataSource <- getDataSource(prefix = "chebi")
    expect_false(is.null(dataSource))
    expect_equal(dataSource$getSystemCode(), "Ce")
})
