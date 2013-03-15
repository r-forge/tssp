##
## addCon Method for objects of class "CLPD"
##
setMethod(f = "addCon", signature(object = "CLPD"), definition = function(object, A, dir, rhs){
  Aorig <- getA(object)
  colnames(A) <- colnames(Aorig)
  if(is.null(rownames(A))){
    rownames(A) <- paste("R", (nrow(Aorig) + 1):(nrow(Aorig) + nrow(A)), sep = "")
  }
  object@A <- rbind(object@A, A)
  object@dir <- c(object@dir, dir)
  object@rhs <- c(object@rhs, rhs)
  if(validObject(object)){
    return(object)
  } else {
    stop("\nAdding of constraints to existing problem formulation failed.\n")
  }
})
