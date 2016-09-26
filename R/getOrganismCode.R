getOrganismCode <- function(name) {
  organism <- .jcall(
			"org/bridgedb/bio/Organism",
			"Lorg/bridgedb/bio/Organism;",
			"fromLatinName",name )
  if (is.null(organism)) {
    stop(paste("Unknown species:", name))
  }
  organism$code()
}
