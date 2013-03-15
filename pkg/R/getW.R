##
## getW Method for objects of class "CDEPD"
##
setMethod(f = "getW", signature(object = "CDEPD"), definition = function(object){
  ans <- slot(object, "W")
  return(ans)
})
