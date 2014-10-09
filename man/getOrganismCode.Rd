\name{getOrganismCode}
\alias{getOrganismCode}
\title{
Return the code of a particular organism.
}
\description{
This method converts a organism latin name into a code.
}
\usage{
getOrganismCode(name)
}
\arguments{
 \item{name}{latin name of an organism}
}
\value{
 \item{systemCode}{the code of the organism}
}
\examples{
systemCode <- getOrganismCode("Mus musculus")
}
\author{
Egon Willighagen
Christ Leemans
}
