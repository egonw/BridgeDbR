\name{getBridgeNames}
\alias{getBridgeNames}
\title{
Method to list the BridgeDb identifier mapping file names as available from the
download site.
}
\description{
This method returns a list of file names of BridgeDb identifier mapping files
as they are available from the mapping file download site. The optional code
parameter can be used to restrict the list to a specific organism.

Occassionally, the ID mapping file download website changes the pattern of the
file names. In that case, you can provide an alternative filename pattern to
recognize files on the download site.
}
\usage{
getBridgeNames(code, website, pattern)
}
\arguments{
 \item{code}{the organism code}
 \item{website}{optional parameter that allows you to provide a different
  location to download BridgeDb Derby files from.}
 \item{pattern}{optional parameter to change the filename pattern of the
  BridgeDb Derby files.}
}
\value{
 \item{list}{the list of available BridgeDb mapping files}
}
\examples{
files <- getBridgeNames("Hs")
\dontrun{
prereleases <- getBridgeNames(
    website="http://bridgedb.org/data/gene_database/pre-release/",
    pattern="metabolites_\\d*.bridge"
)
}
}
\author{
Egon Willighagen
Christ Leemans
}
