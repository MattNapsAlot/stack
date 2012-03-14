setMethod(
  f = "initialize",
  signature = signature("Heap"),
  definition = function(.Object) {
    .Object@heap$heap <- vector(mode="character")
    .Object@heap$elt <- NULL
    .Object
  }
)
