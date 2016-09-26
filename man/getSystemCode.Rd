\name{getSystemCode}
\alias{getSystemCode}
\title{
Return the system code of a particular data source.
}
\description{
Data sources are defined by a title and a short system code. This method
converts a name into a system code.
}
\usage{
getSystemCode(name)
}
\arguments{
 \item{name}{name of the data source}
}
\value{
 \item{systemCode}{the system code of the data source}
}
\examples{
systemCode <- getSystemCode("ChEBI")
}
\author{
Egon Willighagen
Christ Leemans
}
