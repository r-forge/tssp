##
## getSubLP Method for objects of class "CDEPS"
##
setMethod(f = "getSubLP", signature(object = "CDEPS"), definition = function(object){
  ans <- slot(object, "SubLPOpt")
  return(ans)
})
