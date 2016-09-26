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
 \item{target}{system code of the target data source (optional)}
}
\value{
 \item{mappings}{a vector of mapped identifiers for the target data source}
}
\examples{
location <- getDatabase("Mycobacterium tuberculosis")
mapper <- loadDatabase(location)
map(mapper, "L", "885041", "X")
map(mapper, "L", "885041")
}
\author{
Egon Willighagen
}
