\name{maps}
\alias{maps}
\title{
Converts multiple identifiers into other identifiers for the given target data source.
}
\description{
Converts one identifier into other identifiers for the given target data source.
}
\usage{
maps(mapper, identifiers, target)
}
\arguments{
 \item{mapper}{loaded BridgeDb identifier mapper}
 \item{identifiers}{data frame with identifiers to be converted, with a source and a identifier column}
 \item{target}{system code of the target data source (optional)}
}
\value{
 \item{mappings}{a data frame of mapped identifiers for the target data source}
}
\examples{
\dontrun{
location <- getDatabase("Bacillus subtilis")
mapper <- loadDatabase(location)
input = data.frame(
  source= c("L"),
  identifier= c("885041")
)
maps(mapper,input)
}
}
\author{
Egon Willighagen
}
