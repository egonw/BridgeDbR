getBridgeNames <- function(code=NA){
if (is.na(code)) code = "\\w{2}"

site = basicTextGatherer()
curlPerform(url="http://bridgedb.org/data/gene_database/",
                  writefunction=site$update)
str = paste(code,"_Derby_\\d{8}.bridge<",sep="")
expr<- gregexpr(str,site$value())

i = 1
result <- c()
for (start in expr[[1]]) {
 stop = start + 23;
 result[i]<-substr(site$value(),start,stop)
 i = i+1
}
result

}