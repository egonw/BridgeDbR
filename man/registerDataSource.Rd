\name{registerDataSource}
\alias{registerDataSource}
\title{
Registers a new DataSource based on the given name or system code.
}
\description{
Return a DataSource of the newly registered data source, based on either a name
or system code.
}
\usage{
newDataSource = registertDataSource(code,name)
}
\arguments{
 \item{code}{the system code of the data source}
 \item{name}{the name of the data source}
}
\value{
 \item{dataSource}{a DataSource Java object}
}
\examples{
newDataSource <- registertDataSource(code="Cks", name-"KnAPSaCK")
}
\author{
Egon Willighagen
}
