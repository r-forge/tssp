##
## gt2lt Method for objects of class "CLPD"
##
setMethod(f = "gt2lt", signature(object = "CLPD"), definition = function(object){
  dir <- getDir(object)
  idx <- which(dir == ">=")
  if(length(idx) > 0){
    object@A[idx, ] <- -1.0 * object@A[idx, ]
    object@dir[idx] <- "<="
    object@rhs[idx] <- -1.0 * object@rhs[idx]
  }
  if(validObject(object)){
    return(object)
  } else {
    stop("\nConverting greater-than to lower-than constraints failed.\n")
  }
})
