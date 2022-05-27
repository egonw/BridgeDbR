\name{getDataSource}
\alias{getDataSource}
\title{
Return a DataSource object based on either a name, Bioregistry.io prefix, or system code.
}
\description{
Return a DataSource object based on either a name, Bioregistry.io prefix, or system code.
}
\usage{
getDataSource(name,code,prefix)
}
\arguments{
 \item{name}{the name of the data source}
 \item{code}{the system code of the data source}
 \item{prefix}{the Bioregistry.io prefix of the data source}
}
\value{
 \item{dataSource}{a DataSource Java object}
}
\examples{
dataSource <- getDataSource(code="Ce")
}
\author{
Egon Willighagen
}
