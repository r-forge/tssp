##
## getStatus Method for objects of class "CLPS"
##
setMethod(f = "getStatus", signature(object = "CLPS"), definition = function(object){
  ans <- slot(object, "status")
  return(ans)
})
##
## getStatus Method for objects of class "CDEPS"
##
setMethod(f = "getStatus", signature(object = "CDEPS"), definition = function(object){
  ans <- slot(object, "status")
  return(ans)
})


