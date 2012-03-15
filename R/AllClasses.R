setClass(
  Class = "AbstractStack",
  representation = representation(
    heap = "ANY",
    "VIRTUAL"
  )
)

setClass(
  Class = "ListStack",
  contains = "AbstractStack",
  representation = representation(
    heap = "list"
  ),
  validity = function(object){
    if(length(object@heap) != 2L) return("list must have exactly 2 elements")
    if(!all(c("heap", "elt") %in% names(object@heap))) return("list must have elements name 'heap' and 'elt'")
    if(length(object@heap$elt) > 1L) return("elt can contain only a single element")
    TRUE
  }
)

setClass(
  Class = "EnvStack",
  contains = "AbstractStack",
  representation = representation(
    heap = "environment",
    "VIRTUAL"
  ),
  validity = function(object){
    if(length(objects(object@heap)) != 2L) return("environment must contain exactly 2 objects")
    if(!all(c("heap", "elt") %in% objects(object@heap))) return("environment must contain an object named 'heap' and another named 'elt'")
    if(length(object@heap$elt) > 1L) return("elt must contain only a single element")
    if(!is.vector(object@heap$heap)) return("heap must be a vector")
    TRUE
  }
)

setClass(
  Class = "Stack",
  contains = "EnvStack"
)

setClass(
  Class = "SingletonStack",
  contains = "EnvStack",
  prototype = prototype(
    heap = new.env()
  )
)
