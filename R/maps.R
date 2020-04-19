maps <- function(mapper, identifiers, target=NULL){
  if (!is.data.frame(identifiers)) stop("The provided identifiers parameter must be a data frame.")
  allResults <- data.frame(
    source = character(),
    identifier = character(),
    target = character(),
    mapping = character()
  )
  for (i in 1:nrow(identifiers)) {
    source = as.character(identifiers$source[[i]])
    identifier = as.character(identifiers$identifier[[i]])
    if (is.null(target)) {
      singleResults <- map(
        mapper, source=source, identifier=identifier
      )
    } else {
      singleResults <- map(
        mapper, source=source, identifier=identifier,
        target=target
      )
    }
    allResults <- rbind(allResults, singleResults)
  }
  allResults
}
