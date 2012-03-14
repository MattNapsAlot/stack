
setMethod(
  f = "pop",
  signature = signature("EnvHeap"),
  definition = function(h){
    if(length(h@heap$elements) == 0)
      return(NULL)
    h@heap$elt <- h@heap$heap[1]
    h@heap$heap <- h@heap$heap[-1]
    h@heap$elt
  }
)

setMethod(
  f = "push",
  signature = signature("EnvHeap", "ANY"),
  definition = function(h, val){
    h@heap$heap <- c(val, h@heap$heap)
    h@heap$elt <- NULL
    invisible(h@heap$heap)
  }
)

setMethod(
  f = "show",
  signature = "EnvHeap",
  definition = function(object){
    show(object@heap$heap)
    show(object@heap$elt)
  }
)
