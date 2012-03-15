setMethod(
  f = "initialize",
  signature = signature("Stack"),
  definition = function(.Object) {
    .Object@heap <- new.env()
    .Object@heap$heap <- vector(mode="character")
    .Object@heap$elt <- NULL
    .Object
  }
)
