setMethod(
  f = "show",
  signature = "AbstractStack",
  definition = function(object){
    show(object@heap) 
  }
)