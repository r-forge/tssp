##
## getDir Method for objects of class "CLPD"
##
setMethod(f = "getDir", signature(object = "CLPD"), definition = function(object){
  ans <- slot(object, "dir")
  return(ans)
})
##
## getDir Method for objects of class "CLPS"
##
setMethod(f = "getDir", signature(object = "CLPS"), definition = function(object){
  callNextMethod(object@LP)
})
##
## getDir Method for objects of class "CDEPD"
##
setMethod(f = "getDir", signature(object = "CDEPD"), definition = function(object){
  callNextMethod(object@MP)
})
