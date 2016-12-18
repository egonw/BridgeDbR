fullNameExists <- function(name=NA){
  exists = NULL
  if (!is.na(name)) {
    exists <- .jcall(
     "org/bridgedb/DataSource",
     "Z",
     "fullNameExists",name
    )
  } else {
    stop("You must provide a name")
  }
   exists
}
