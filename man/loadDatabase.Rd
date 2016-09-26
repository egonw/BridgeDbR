\name{loadDatabase}
\alias{loadDatabase}
\title{
Loads a BridgeDb identifier mapping database (.bridge file) as an IDMapper
Java-Object.
}
\description{
Loads a BridgeDb identifier mapping database (.bridge file) as an IDMapper
Java-Object.
}
\details{The return Java-Object is a Java class implementing the BridgeDb
IDMapper interface. It is the required mapper class that is used as input
for other methods that need an IDMapper.
}
\usage{
loadDatabase(location)
}
\arguments{
 \item{location}{location on the hard disk of the BridgeDb file}
}
\value{
 \item{mapper}{an IDMapper object}
}
\examples{
location <- getDatabase("Mycobacterium tuberculosis")
mapper <- loadDatabase(location)
}
\author{
Egon Willighagen
}
