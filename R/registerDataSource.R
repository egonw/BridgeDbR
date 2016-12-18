registerDataSource <- function(code=NA,name=NA){
  datasource = NULL
  if (is.na(name) || is.na(code)) {
    stop("You must provide both a name or a system code")
  } else {
    builder <- .jcall(
     "org/bridgedb/DataSource",
     "Lorg/bridgedb/DataSource$Builder;",
     "register", code, name
    )
    datasource <- builder$asDataSource()
  }
  datasource
}
