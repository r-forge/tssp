##
## getRhs Method for objects of class "CLPD"
##
setMethod(f = "getRhs", signature(object = "CLPD"), definition = function(object){
  ans <- slot(object, "rhs")
  return(ans)
})
##
## getRhs Method for objects of class "CLPS"
##
setMethod(f = "getRhs", signature(object = "CLPS"), definition = function(object){
  callNextMethod(object@LP)
})
##
## getRhs Method for objects of class "CDEPD"
##
setMethod(f = "getRhs", signature(object = "CDEPD"), definition = function(object){
  callNextMethod(object@MP)
})

