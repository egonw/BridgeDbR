getBridgeNames <- function(
    code, website="http://bridgedb.org/data/gene_database/", pattern
) {
    if (missing(code)) code = "\\w{2}"
    if (missing(pattern))
        pattern = paste(code,"_Derby_Ensembl_\\w+.bridge",sep="")
    site = basicTextGatherer()
    curlPerform(url=website, writefunction=site$update)
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
