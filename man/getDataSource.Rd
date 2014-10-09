\name{getDataSource}
\alias{getDataSource}
\title{
Return a DataSource object based on either a name or system code.
}
\description{
Return a DataSource object based on either a name or system code.
}
\usage{
getDataSource(name,code)
}
\arguments{
 \item{name}{the name of the data source}
 \item{code}{the system code of the data source}
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
