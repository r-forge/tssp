##
## getDecVar Method for objects of class "CLPS"
##
setMethod(f = "getDecVar", signature(object = "CLPS"), definition = function(object){
  par <- getPar(object)
  ans <- par[attr(object@LP, "DecVar")]
  return(ans)
})
##
## getDecVar Method for objects of class "CDEPS"
##
setMethod(f = "getDecVar", signature(object = "CDEPS"), definition = function(object){
  par <- getPar(object)
  ans <- par[attr(object@DEP@MP, "DecVar")]
  return(ans)
})


