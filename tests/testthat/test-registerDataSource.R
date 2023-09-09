library(BridgeDbR)
context("simple")

test_that("allows registring of an existing resources", {
    dataSource <- registerDataSource(code = "Cks", name = "KNApSAcK")
    expect_false(is.null(dataSource))
    expect_equal(dataSource$getSystemCode(), "Cks")
})

test_that("allows registring of a new resources", {
    dataSource <- registerDataSource(code = "Sou", name = "Sourcy McSourceface")
    expect_false(is.null(dataSource))
    expect_equal(dataSource$getSystemCode(), "Sou")
})
