map <- function(mapper, source, identifier, target=NULL){
  datasource <- getDataSource(code=source)
  xref <- .jnew("org/bridgedb/Xref", identifier, datasource)
  if (!is.null(target)) {
    datatarget <- getDataSource(code=target)
    targets <- .jarray(c(datatarget), contents.class="org/bridgedb/DataSource")
  } else {
    targets <- .jarray(list(), contents.class="org/bridgedb/DataSource")
  }
  mappings = mapper$mapID(xref, targets)
  str <- strsplit(mappings$toString(),"\\[")
  str <- strsplit(str[[1]][2],"\\]")
  str <- strsplit(str[[1]][1],", ")
  foo <- unlist(str)
  bar <- sapply(foo, function(x) { unlist(substr(x,regexpr(":",x,fixed=TRUE)+1,nchar(x)))})
  names(bar) <- c()
  bar
}
