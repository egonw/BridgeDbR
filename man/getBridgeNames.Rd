\name{getBridgeNames}
\alias{getBridgeNames}
\title{
Method to list the BridgeDb identifier mapping file names as available from the download site.
}
\description{
This method returns a list of file names of BridgeDb identifier mapping files as they are
available from the mapping file download site. The optional code parameter can be used
to restrict the list to a specific organism.
}
\usage{
getBridgeNames(code)
}
\arguments{
 \item{code}{the organism code}
}
\value{
 \item{list}{the list of available BridgeDb mapping files}
}
\examples{
files <- getBridgeNames("Hs")
}
\author{
Egon Willighagen
Christ Leemans
}
