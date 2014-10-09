getOrganismCode <- function(name) {
  organism <- .jcall(
			"org/bridgedb/bio/Organism",
			"Lorg/bridgedb/bio/Organism;",
			"fromLatinName",name )
  organism$code()
}