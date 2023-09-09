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
map(mapper, "L", "885041", "X")
map(mapper, "L", "885041")
map(mapper, compactIdentifier="ncbigene:885041")
}
}
\author{
Egon Willighagen
}
