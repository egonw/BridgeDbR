\name{map}
\alias{map}
\title{
Converts one identifier into other identifiers for the given target data source.
}
\description{
Converts one identifier into other identifiers for the given target data source.
}
\usage{
map(mapper, source, identifier, target, compactIdentifier)
}
\arguments{
 \item{mapper}{loaded BridgeDb identifier mapper}
 \item{source}{system code of the data source}
 \item{identifier}{identifier to be converted}
 \item{target}{system code of the target data source (optional)}
 \item{compactIdentifier}{the Bioregistry.io compact identifier to convert}
}
\value{
 \item{mappings}{a data frame of mapped identifiers for the target data source}
}
\examples{
\dontrun{
location <- getDatabase("Bacillus subtilis")
mapper <- loadDatabase(location)
map(mapper, "En", "BSn5_00025", "S")
map(mapper, "En", "BSn5_00025")
location <- getDatabase("Homo sapiens")
mapper <- loadDatabase(location)
map(mapper, "En", "ENSG00000139618")
map(mapper, compactIdentifier="uniprot:P51587")
}
}
\author{
Egon Willighagen
}
