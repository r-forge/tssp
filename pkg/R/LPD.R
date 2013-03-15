##
## Generator function for objects of class "CLPD"
##
LPD <- function(obj, A, dir, rhs, bounds = NULL, max = FALSE){
  n <- length(obj)
  if(is.null(names(obj))){
    names(obj) <- paste("x", 1:n, sep = "")
  }
  if(is.null(colnames(A))){
    colnames(A) <- names(obj)
  }
  if(is.null(rownames(A))){
    rownames(A) <- paste("R", 1:nrow(A), sep = "")
  }
  if(is.null(bounds)){
    bounds <- list(lower = list(ind = 1:n, val = rep(0, n)),
                   upper = list(ind = 1:n, val = rep(Inf, n)))
  }
  ans <- new("CLPD", obj = obj, A = A, dir = dir, rhs = rhs, bounds = bounds, max = max)
  DecVarNames <- names(obj)[abs(obj) > 0]
  if("theta" %in% DecVarNames){
    DecVarNames <- DecVarNames[-which(DecVarNames == "theta")]
  }
  attr(ans, "DecVar") <- DecVarNames 
  ans
}
