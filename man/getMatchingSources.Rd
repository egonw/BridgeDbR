\name{getMatchingSources}
\alias{getMatchingSources}
\title{
Return a list of data sources of which the identifier pattern matches the
identifier given.
}
\description{
This method runs through all data sources it knows about, and looks for sources
of which the identifier pattern matches the given identifier.
}
\usage{
getMatchingSources(identifier)
}
\arguments{
 \item{identifier}{identifier to test}
}
\value{
 \item{list}{list of matching data sources}
}
\examples{
list <- getMatchingSources("555")
}
\author{
Egon Willighagen
Christ Leemans
}
