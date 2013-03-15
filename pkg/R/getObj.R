##
## getObj Method for objects of class "CLPD"
##
setMethod(f = "getObj", signature(object = "CLPD"), definition = function(object){
  ans <- slot(object, "obj")
  return(ans)
})
##
## getObj Method for objects of class "CLPS"
##
setMethod(f = "getObj", signature(object = "CLPS"), definition = function(object){
  callNextMethod(object@LP)
})
##
## getObj Method for objects of class "CDEPD"
##
setMethod(f = "getObj", signature(object = "CDEPD"), definition = function(object){
  callNextMethod(object@MP)
})

