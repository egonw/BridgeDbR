getFullName<-function(syscode){
  if(missing(syscode)) stop("You must provide a system code")
  datasource <- getDataSource(code=syscode)
  datasource$getFullName()
}