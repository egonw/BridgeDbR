map <- function(mapper, source, identifier, target){
  datasource <- getDataSource(code=source)
  datatarget <- getDataSource(code=target)
  xref <- .jnew("org/bridgedb/Xref", identifier, datasource)
  targets = .jarray(c(datatarget), contents.class="org/bridgedb/DataSource")
  mappings = mapper$mapID(xref, targets)
  str <- strsplit(mappings$toString(),"\\[")
  str <- strsplit(str[[1]][2],"\\]")
  str <- strsplit(str[[1]][1],", ")
  foo = unlist(str)
  bar = sapply(foo, function(x) { unlist(strsplit(x,":"))[2] })
  names(bar) = c()
  bar
}
