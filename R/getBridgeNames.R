getBridgeNames <- function(
    code, website="https://bridgedb.github.io/data/gene_database/", pattern
) {
    if (missing(code)) code = "\\w{2}"
    if (missing(pattern))
        pattern = paste(code,"_Derby_Ensembl_\\w+.bridge",sep="")
    # force TSL1.2 with RCurl
    CURL_SSLVERSION_TLSv1_2 <- 6L
    opts <- RCurl::curlOptions(
      sslversion = CURL_SSLVERSION_TLSv1_2
    )

    site = basicTextGatherer()
    curlPerform(url=website, writefunction=site$update, .opts = opts)
    patternInternal = paste(">", pattern, "<",sep="") # require a trailing tag
    expr<- gregexpr(patternInternal,site$value())

    i = 1
    result <- c()
    matches = expr[[1]]
    matchLengths = attributes(matches)$match.length
    for (matchCounter in 1:length(matches)) {
        start = matches[matchCounter] + 1
        stop = start + matchLengths[matchCounter] - 3
        result[i] <- substr(site$value(),start,stop)
        i = i+1
    }
    result
}
