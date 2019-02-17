\name{getAttributes}
\alias{getAttributes}
\title{
Returns the attributes of the given identifier.
}
\description{
Returns the attributes of the given identifier.
}
\usage{
getAttributes(mapper, source, identifier)
}
\arguments{
 \item{mapper}{loaded BridgeDb identifier mapper}
 \item{source}{system code of the data source}
 \item{identifier}{identifier to return the attributes for}
}
\value{
 \item{mappings}{a vector of attributes}
}
\examples{
\dontrun{
location <- getDatabase("Homo sapiens")
mapper <- loadDatabase(location)
getAttributes(mapper, "L", "672")
}
}
\author{
Egon Willighagen
}
