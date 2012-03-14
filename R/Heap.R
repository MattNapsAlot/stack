setMethod(
  f = "initialize",
  signature = signature("Heap"),
  definition = function(.Object) {
    .Object@heap <- new.env()
    .Object@heap$heap <- vector(mode="character")
    .Object@heap$elt <- NULL
    .Object
  }
)
