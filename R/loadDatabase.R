loadDatabase <- function(location) {
    if (!file.exists(location))
        stop(paste('The BridgeDb Derby file', location, 'does not exist in this folder.', sep=" "))
    J("org.bridgedb.rdb.SimpleGdbFactory")$createInstance(
        location,
        paste("jdbc:derby:jar:(", location, ")database", sep = "")
    )
    idMapper <- .jcall(
        "org/bridgedb/BridgeDb", "Lorg/bridgedb/IDMapper;",
        "connect", paste("idmapper-pgdb", location, sep = ":")
    )
    idMapper
}
