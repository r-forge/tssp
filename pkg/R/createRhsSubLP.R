##
## createRhsSubLP Method for objects of class "CDEPD"
##
setMethod(f = "createRhsSubLP", signature(object = "CDEPD"), definition = function(object, x){
  K <- getK(object)
  H <- getH(object)
  lH <- nrow(H)
  Tech <- getTech(object)
  lTech <- length(Tech)
  ## Initialize matrix object for output
  if(identical(lH, lTech)){
    idx <- cbind(1:lH, 1:lH)
  } else {
    idx <- expand.grid(1:lH, 1:lTech)
  }
  Nrows <- nrow(idx)
  ans <- matrix(NA, nrow = Nrows, ncol = ncol(H))
  for(i in 1:Nrows){
    ans[i, ] <- c(H[idx[i, 1], ] - Tech[[idx[i, 2]]] %*% x)
  }
  if(identical(nrow(ans), 1L)){
    ans <- matrix(c(ans), nrow = K, ncol = ncol(H), byrow = TRUE)
  }
  return(ans)
})
