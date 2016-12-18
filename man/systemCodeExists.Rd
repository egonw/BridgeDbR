\name{systemCodeExists}
\alias{systemCodeExists}
\title{
Determines if the system code corresponds to any known data source.
}
\description{
Data sources are defined by a title and a short system code. This method
determines if a data source is known with the given system code.
}
\usage{
systemCodeExists(code)
}
\arguments{
 \item{code}{system code of the data source}
}
\value{
 \item{exists}{boolean that indicates if a data is known with the given system
   code}
}
\examples{
exists <- systemCodeExists("Ce")
}
\author{
Egon Willighagen
}
