getAttributes <- function(mapper, source, identifier){
  datasource <- getDataSource(code=source)
  xref <- .jnew("org/bridgedb/Xref", identifier, datasource)
  attribs = mapper$getAttributes(xref)
  str <- attribs$keySet()$toString()
  str <- substring(str,2)
  str <- substring(str,1,nchar(str)-1)
  str <- strsplit(str[[1]][1],", ")
  foo <- unlist(str)
  keys <- sapply(foo, function(x) { unlist(substr(x,regexpr(":",x,fixed=TRUE)+1,nchar(x)))})
  names(keys) <- c()
  pairs <- c()
  for (key in keys) {
    val <- attribs$get(key)$toString()
    val <- substring(val,2)
    val <- substring(val,1,nchar(val)-1)
    pairs <- c(pairs, key, val)
  }
  results <- matrix(unlist(pairs), byrow=TRUE, ncol=2)
  results
}
