##
## createSubLP Method for objects of class "CDEPD"
##
setMethod(f = "createSubLP", signature(object = "CDEPD"), definition = function(object, x, Rhs = NULL){
  K <- getK(object)
  W <- getW(object)
  Q <- getQ(object)
  if(identical(nrow(Q), 1L)){
    ans <- matrix(c(Q), nrow = K, ncol = ncol(W), byrow = TRUE)
  }
  if(is.null(Rhs)) Rhs <- createRhsSubLP(object, x)
  ## Initialize list object for output
  ans <- list()
  length(ans) <- K
  ans <- lapply(1:K, function(i) LPD(obj = Q[i, ], A = W, dir = object@SubDir, rhs = Rhs[i, ]))
  return(ans)
})
