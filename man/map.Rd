\name{map}
\alias{map}
\title{
Converts one identifier into other identifiers for the given target data source.
}
\description{
Converts one identifier into other identifiers for the given target data source.
}
\usage{
map(mapper, source, identifier, target)
}
\arguments{
 \item{mapper}{loaded BridgeDb identifier mapper}
 \item{source}{system code of the data source}
 \item{identifier}{identifier to be converted}
 \item{target}{system code of the target data source}
}
\value{
 \item{mappings}{a vector of mapped identifiers for the target data source}
}
\examples{
\dontrun{
location <- getDatabase("Homo sapiens")
mapper <- loadDatabase(location)
map(mapper, "L", "196410", "X")
}
}
\author{
Egon Willighagen
}
