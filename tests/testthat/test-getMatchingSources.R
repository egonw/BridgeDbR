library(BridgeDbR)
context("simple")

test_that("it recognizes identifiers from HMDB (old)", {
    answerList <- getMatchingSources("HMDB00626")
    expect_true(is.vector(answerList))
    expect_true("HMDB" %in% answerList)
})

test_that("it recognizes identifiers from HMDB (new, 2017-08)", {
    answerList <- getMatchingSources("HMDB0000626")
    expect_true(is.vector(answerList))
    expect_true("HMDB" %in% answerList)
})
