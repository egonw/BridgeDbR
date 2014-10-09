\name{getFullName}
\alias{getFullName}
\title{
Return the name of a particular data source.
}
\description{
Data sources are defined by a title and a short system code. This method converts a system code into a full name.
}
\usage{
getFullName(syscode)
}
\arguments{
 \item{syscode}{the system code of the data source}
}
\value{
 \item{systemCode}{the full name of the data source}
}
\examples{
name <- getFullName("Ce")
}
\author{
Egon Willighagen
Christ Leemans
}
