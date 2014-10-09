getDatabase <- function(organism,location=NA) {
 if(is.na(location)) location = tempdir();
 code = getOrganismCode(organism)
 names = getBridgeNames(code)
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
 url = paste("http://bridgedb.org/data/gene_database/",names[c],sep="")
 file = paste(location,"/",name,sep="")
 download.file(url,file)
 file
}