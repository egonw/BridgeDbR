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
  targetcodes <- sapply(foo, function(x) { unlist(substr(x,0,regexpr(":",x,fixed=TRUE)-1))})
  names(targetcodes) <- c()
  mappings <- sapply(foo, function(x) { unlist(substr(x,regexpr(":",x,fixed=TRUE)+1,nchar(x)))})
  names(mappings) <- c()
  data.frame(
   source = rep(source, length(mappings)),
   identifier = rep(identifier, length(mappings)),
   target = targetcodes,
   mapping = mappings
  )
}
