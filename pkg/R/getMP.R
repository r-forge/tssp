##
## getMP Method for objects of class "CDEPD"
##
setMethod(f = "getMP", signature(object = "CDEPD"), definition = function(object){
  ans <- slot(object, "MP")
  return(ans)
})
