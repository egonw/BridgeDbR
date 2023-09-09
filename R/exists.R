exists <- function(mapper, source, identifier, compactIdentifier = NA) {
    if (!is.na(compactIdentifier)) {
        source <- gsub(":.*", "", compactIdentifier)
        identifier <- gsub(".*:", "", compactIdentifier)
        datasource <- getDataSource(prefix = source)
    } else {
        datasource <- getDataSource(code = source)
    }
    xref <- .jnew("org/bridgedb/Xref", identifier, datasource)
    mapper$xrefExists(xref)
}
