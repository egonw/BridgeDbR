loadDatabase <- function(location) {
  if(is.na(location)) location = tempdir();
  J("org.bridgedb.rdb.SimpleGdbFactory")$createInstance(
    location,
    paste("jdbc:derby:jar:(", location, ")database", sep="")
  )
  idMapper <- .jcall(
    "org/bridgedb/BridgeDb","Lorg/bridgedb/IDMapper;",
    "connect", paste("idmapper-pgdb", location,sep=":")
  );
  idMapper
}
