##
## getK Method for objects of class "CDEPD"
##
setMethod(f = "getK", signature(object = "CDEPD"), definition = function(object){
  ans <- slot(object, "K")
  return(ans)
})
