getBridgeNames <- function(
    code, website="https://bridgedb.github.io/data/gene_database/", pattern
) {
    if (missing(code)) code = "\\w{2}"
    if (missing(pattern))
        pattern = paste(code,"_Derby_Ensembl_\\w+.bridge",sep="")

    patternInternal = paste(">", pattern, "<",sep="") # require a trailing tag
    lines = readLines(curl(website))

    i = 1
    result <- c()
    for (line in lines) {
      expr<- gregexpr(patternInternal,line)

      matches = expr[[1]]
      matchLengths = attributes(matches)$match.length
      for (matchCounter in 1:length(matches)) {
        start = matches[matchCounter] + 1
        stop = start + matchLengths[matchCounter] - 3
        matchedString = substr(line,start,stop)
        if (nchar(matchedString) > 0) {
          result[i] <- matchedString
          i = i + 1
        }
      }
    }
    result
}
