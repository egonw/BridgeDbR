\name{getDatabase}
\alias{getDatabase}
\title{
Downloads a identifier mapping database for the given organism.
}
\description{
Downloads a identifier mapping database for the given organism. The optional
location parameter can be used to indicate where the file should be stored.
If not give, it will save it in a temporary folder.

This method extracts links from https://bridgedb.github.io/data/gene_database/
to identifier mapping databases hosted on Zenodo and Figshare, two public
data archives.
}
\usage{
getDatabase(organism,location,website)
}
\arguments{
 \item{organism}{the organism name}
 \item{location}{optional parameter to indicate where the database should be
                 saved}
 \item{website}{optional URL of the server where to look for BridgeDb identifier
               mapping databases}
}
\value{
 \item{location}{the location where the database was saved}
}
\examples{
\dontrun{location <- getDatabase("Bacillus subtilis")}
\dontrun{location <- getDatabase("Homo sapiens")}
}
\author{
Egon Willighagen
Christ Leemans
}
