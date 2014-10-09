\name{getDatabase}
\alias{getDatabase}
\title{
Downloads a identifier mapping database for the given organism.
}
\description{
Downloads a identifier mapping database for the given organism. The optional
location parameter can be used to indicate where the file should be stored.
If not give, it will save it in a temporary folder.
}
\usage{
getDatabase(organism,location)
}
\arguments{
 \item{organism}{the organism name}
 \item{location}{optional parameter to indicate where the database should be saved}
}
\value{
 \item{location}{the location where the database was saved}
}
\examples{
\dontrun{location <- getDatabase("Homo sapiens")}
}
\author{
Egon Willighagen
Christ Leemans
}
