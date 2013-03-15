##
## getA Method for objects of class "CLPD"
##
setMethod(f = "getA", signature(object = "CLPD"), definition = function(object){
  ans <- slot(object, "A")
  return(ans)
})
##
## getA Method for objects of class "CLPS"
##
setMethod(f = "getA", signature(object = "CLPS"), definition = function(object){
  callNextMethod(object@LP)
})
##
## getA Method for objects of class "CDEPD"
##
setMethod(f = "getA", signature(object = "CDEPD"), definition = function(object){
  callNextMethod(object@MP)
})
