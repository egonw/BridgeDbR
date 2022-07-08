maps <- function(mapper, identifiers, target = NULL){
  if (!is.data.frame(identifiers)) stop("The provided identifiers parameter must be a data frame.")
  allResults <- do.call(rbind, suppressWarnings (apply (identifiers, 1, function (x) {
    source = x["source"]  
    identifier = x["identifier"]
    if (is.null(target)) {
      map(
        mapper, source=source, identifier=identifier
      )
    } else {
      map(
        mapper, source=source, identifier=identifier,
        target = target
      )}
  })))
}
