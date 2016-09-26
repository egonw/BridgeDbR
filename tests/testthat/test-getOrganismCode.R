library(BridgeDbR)
context("simple")

test_that("it returns an Organism code", {
    expect_equal("Hs", getOrganismCode("Homo sapiens"))
})

test_that("it gives an error for 'Foo'", {
    expect_that(getOrganismCode("Foo"), throws_error("Unknown species: Foo"))
})
