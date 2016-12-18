\name{fullNameExists}
\alias{fullNameExists}
\title{
Determines if the full name corresponds to any known data source.
}
\description{
Data sources are defined by a title and a short system code. This method
determines if a data source is known with the given full name.
}
\usage{
fullNameExists(name)
}
\arguments{
 \item{name}{full name of the data source}
}
\value{
 \item{exists}{boolean that indicates if a data is known with the given name}
}
\examples{
exists <- fullNameExists("HMDB")
}
\author{
Egon Willighagen
}
