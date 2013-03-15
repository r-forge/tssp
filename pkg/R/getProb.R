##
## getProb Method for objects of class "CDEPD"
##
setMethod(f = "getProb", signature(object = "CDEPD"), definition = function(object){
  ans <- slot(object, "prob")
  return(ans)
})
##
## getProb Method for objects of class "CDEPS"
##
setMethod(f = "getProb", signature(object = "CDEPS"), definition = function(object){
  callNextMethod(object@DEP)
})
