setMethod(
  f = "initialize",
  signature = signature("SingletonStack"),
  definition = function(.Object) {
    .Object@heap$heap <- vector(mode="character")
    .Object@heap$elt <- NULL
    .Object
  }
)
