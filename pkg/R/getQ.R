##
## getQ Method for objects of class "CDEPD"
##
setMethod(f = "getQ", signature(object = "CDEPD"), definition = function(object){
  ans <- slot(object, "q")
  if(identical(nrow(ans), 1L)){
    ans <- matrix(c(ans), nrow = getK(object), ncol = ncol(ans), byrow = TRUE)
  }
  return(ans)
})
