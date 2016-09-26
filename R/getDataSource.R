getDataSource <- function(name=NA, code=NA){
  datasource = NULL
  if (!is.na(name)) {
    datasource <- .jcall(
     "org/bridgedb/DataSource",
     "Lorg/bridgedb/DataSource;",
     "getExistingByFullName",name
    )
  } else if (!is.na(code)) {
    datasource <- .jcall(
     "org/bridgedb/DataSource",
     "Lorg/bridgedb/DataSource;",
     "getExistingBySystemCode",code
    )
  } else {
    stop("You must provide either a name or a system code")
  }
   datasource
}
