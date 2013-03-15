##
## getOpt Method for objects of class "CLPS"
##
setMethod(f = "getOpt", signature(object = "CLPS"), definition = function(object){
  ans <- slot(object, "opt")
  return(ans)
})
##
## getOpt Method for objects of class "CDEPS"
##
setMethod(f = "getOpt", signature(object = "CDEPS"), definition = function(object){
  ans <- slot(object, "opt")
  return(ans)
})


