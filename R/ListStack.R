setMethod(
  f = "pop",
  signature = signature("ListStack"),
  definition = function(h){
    if(length(h@heap$heap) == 0)
      return(h)
    h@heap$elt <- h@heap$heap[1]
    h@heap$heap <- h@heap$heap[-1] 
    h
  }
)

setMethod(
  f = "push",
  signature = signature("ListStack", "ANY"),
  definition = function(h, val){
    h@heap <- list(heap = c(val, h@heap$heap), elt = NULL)
    h
  }
)