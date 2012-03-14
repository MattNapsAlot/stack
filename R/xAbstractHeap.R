setMethod(
  f = "show",
  signature = "AbstractHeap",
  definition = function(object){
    show(object@heap) 
  }
)