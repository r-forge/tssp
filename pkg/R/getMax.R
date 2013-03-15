##
## getMax Method for objects of class "CLPD"
##
setMethod(f = "getMax", signature(object = "CLPD"), definition = function(object){
  ans <- slot(object, "max")
  return(ans)
})
##
## getMax Method for objects of class "CLPS"
##
setMethod(f = "getMax", signature(object = "CLPS"), definition = function(object){
  callNextMethod(object@LP)
})
##
## getMax Method for objects of class "CDEPD"
##
setMethod(f = "getMax", signature(object = "CDEPD"), definition = function(object){
  callNextMethod(object@MP)
})
