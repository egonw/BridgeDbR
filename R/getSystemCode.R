getSystemCode <- function(name){
  datasource <- getDataSource(name=name)
  datasource$getSystemCode() 
}
  