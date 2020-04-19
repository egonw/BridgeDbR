getProperties <- function(mapper){
 capabilities <- mapper$getCapabilities()
 keys = sapply(capabilities$getKeys(), function(key) key$toString())
 values = c()
 for (key in keys) {
  values = c(values, capabilities$getProperty(key))
 }
 data.frame(
   property = keys,
   value    = values
 )
}
