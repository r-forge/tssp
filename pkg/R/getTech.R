##
## getTech Method for objects of class "CDEPD"
##
setMethod(f = "getTech", signature(object = "CDEPD"), definition = function(object){
  ans <- slot(object, "Tech")
  if(identical(length(ans), 1L)){
    ans <- rep(ans, object@K)
  }
  return(ans)
})
