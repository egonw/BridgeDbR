getDatabase <- function(organism,location=NA,website="https://bridgedb.github.io/data/gene_database/") {
 if(is.na(location)) location = tempdir();
 code = getOrganismCode(organism)
 names = getBridgeNames(code,website=website)
 dates = c()
 i = 1
 for (name in names) {
  dates[i]<- substr(name,10,17)
  i = i + 1
 }
 j = 1
 c = 1
 current = dates[1]
 for (date in dates) {
  if(date>current) {
   current = date
   c = j
  }
  j = j+1
 }

 pattern = paste("http[^\"]*\">", names[c], sep="")
 site = RCurl::basicTextGatherer()
 RCurl::curlPerform(url=website, writefunction=site$update)
 expr<- gregexpr(pattern,site$value(), perl=TRUE)

 i = 1
 result <- c()
 matches = expr[[1]]
 matchLengths = attributes(matches)$match.length
 for (matchCounter in 1:length(matches)) {
   start = matches[matchCounter]
   stop = start + matchLengths[matchCounter] - (nchar(names[c]) + 3)
   result[i] <- substr(site$value(),start,stop)
   i = i+1
 }

 url = result[1]
 file = paste(location,"/",name,sep="")
 download.file(url,file, mode="wb")
 file
}
