map <- function(mapper, source, identifier, compactIdentifier = NA, target = NULL){
  # if (!is.na(compactIdentifier)) { # this can be removed unless we add it to the R Documentation

  #   source <- gsub(":.*", "", compactIdentifier)
  #   identifier <- gsub(".*:", "", compactIdentifier)
  #   datasource <- getDataSource(prefix=source)
  # } else {
    datasource <- getDataSource(code=source)
  # }
  xref <- .jnew("org/bridgedb/Xref", identifier, datasource)
  if (!is.null(target)) {
    datatarget <- getDataSource(code = target)
    targets <- .jarray(c(datatarget), contents.class ="org/bridgedb/DataSource")
  } else {
    targets <- .jarray(list(), contents.class = "org/bridgedb/DataSource")
  }
  mappings = mapper$mapID(xref, targets)
  str <- strsplit(gsub(".*\\[|].*", "", mappings$toString()), ", ")
  targetcodes <- lapply(str, function(x) {gsub(":.*", "", x, )})
  mappings <- lapply(str, function(x) {gsub(":[^:]*$|^[^:]*:", "", x)})
  isPrimary <- lapply(str, function(x) {gsub(".*:", "", x)})
  data.frame(
    source = source,
    identifier = identifier,
    target = unlist(targetcodes, use.names = FALSE),
    mapping = unlist(mappings, use.names = FALSE),
    isPrimary = unlist(isPrimary, use.names = FALSE)
  )
}
