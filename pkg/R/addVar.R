##
## addVar Method for objects of class "CLPD"
##
setMethod(f = "addVar", signature(object = "CLPD"), definition = function(object, add2obj, newAcol, varNames = NULL, newBound = NULL, rhs = NULL){
  n <- length(object@obj)
  if(is.null(varNames)){
    colnames(newAcol) <- paste("x", (n+1):(n + ncol(newAcol)), sep = "")
    names(add2obj) <- colnames(newAcol)
  } else {
    colnames(newAcol) <-  varNames
    names(add2obj) <- varNames
  }
  object@A <- cbind(object@A, newAcol)
  object@obj <- c(object@obj, add2obj)
  if(!is.null(rhs)){
    object@rhs <- rhs
  }
  B <- getBounds(object)
  if(is.null(newBound)){
    B$lower[[1]] <- c(B$lower[[1]], (n + 1):(n + length(add2obj)))
    B$lower[[2]] <- c(B$lower[[2]], rep(0, length(add2obj)))
    B$upper[[1]] <- c(B$upper[[1]], (n + 1):(n + length(add2obj)))
    B$upper[[2]] <- c(B$upper[[2]], rep(Inf, length(add2obj)))
  } else {
    B$lower[[1]] <- c(B$lower[[1]], newBound$lower[[1]] + n)
    B$lower[[2]] <- c(B$lower[[2]], newBound$lower[[2]])
    B$upper[[1]] <- c(B$upper[[1]], newBound$upper[[1]] + n)
    B$upper[[2]] <- c(B$upper[[2]], newBound$upper[[2]])
  }
  object@bounds <- B
  if(validObject(object)){
    return(object)
  } else {
    stop("\nAdding of variables to existing problem formulation failed.\n")
  }
})
