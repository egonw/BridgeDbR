\name{getProperties}
\alias{getProperties}
\title{
BridgeDb database properties.
}
\description{
Gets the properties of an BridgeDb ID mapping database.
}
\usage{
getProperties(mapper)
}
\arguments{
 \item{mapper}{loaded BridgeDb identifier mapper}
}
\value{
 \item{properties}{a data frame with the properties}
}
\examples{
\dontrun{
location <- getDatabase("Bacillus subtilis")
mapper <- loadDatabase(location)
getProperties(mapper)
}
}
\author{
Egon Willighagen
}
