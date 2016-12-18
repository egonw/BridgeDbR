systemCodeExists <- function(code=NA){
  exists = NULL
  if (!is.na(code)) {
    exists <- .jcall(
     "org/bridgedb/DataSource",
     "Z",
     "systemCodeExists",code
    )
  } else {
    stop("You must provide a system code")
  }
   exists
}
