\name{xrefExists}
\alias{xrefExists}
\title{
Checks if the given identifier exists
}
\description{
Checks if the given identifier exists in the given mapping file
}
\usage{
xrefExists(mapper, source, identifier, compactIdentifier)
}
\arguments{
 \item{mapper}{loaded BridgeDb identifier mapper}
 \item{source}{system code of the data source}
 \item{identifier}{identifier to be searched}
 \item{compactIdentifier}{the Bioregistry.io compact identifier to check}
}
\value{
 \item{boolean}{true, if the given identifier is found in the mapping database}
}
\examples{
\dontrun{
location <- getDatabase("Bacillus subtilis")
mapper <- loadDatabase(location)
xrefExists(mapper, "L", "885041")
xrefExists(mapper, compactIdentifier="ncbigene:885041")
}
}
\author{
Egon Willighagen
}
