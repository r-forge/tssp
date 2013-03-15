##
## checkAddOptCut Method for objects of class "CDEPD"
##
setMethod(f = "checkAddOptCut", signature(object = "CDEPD"), definition = function(object, x, theta, Rhs = NULL){
  if(is.null(Rhs)) Rhs <- createRhsSubLP(object, x)
  NamesAcol <- colnames(getA(object))
  SubLP <- createSubLP(object, x, Rhs)
  SubLPsF <- lapply(SubLP, iq2eq)
  SubLPDual <- lapply(SubLPsF, Primal2Dual)
  SubLPDualSol <- lapply(SubLPDual, solveLPD)
  SubLPOpt <- unlist(lapply(SubLPDualSol, getOpt))
  K <- object@K
  CountDualVar <- nrow(object@W)
  PiMat <- matrix(unlist(lapply(SubLPDualSol, getPar)), ncol = CountDualVar, byrow = TRUE)
  if(identical(nrow(object@h), 1L)){
    e <- sum(sapply(1:K, function(i) object@prob[i] * PiMat[i, ] %*% object@h[1, ]))
  } else {
    e <- sum(sapply(1:K, function(i) object@prob[i] * PiMat[i, ] %*% object@h[i, ]))   
  }
  if(identical(length(object@Tech), 1L)){
    E <- rowSums(sapply(1:K, function(i) object@prob[i] * PiMat[i, ] %*% object@Tech[[1]]))
  } else {
    E <- rowSums(sapply(1:K, function(i) object@prob[i] * PiMat[i, ] %*% object@Tech[[i]]))
  }
  w <- c(e - E %*% x)
  if(theta < w){
    ## add optimality cut
    Arow <- matrix(0, nrow = 1, ncol = length(NamesAcol))
    colnames(Arow) <- NamesAcol
    Arow[1, c(names(x), "theta")] <- c(E, 1)
    rownames(Arow) <- "OC"
    object@MP <- addCon(object = object@MP, A = Arow, dir = ">=", rhs = e)
    attr(object, "Counter")[3] <- attr(object, "Counter")[3] + 1
    return(list(DEP = object, SubLPOpt = SubLPDualSol, status = 1))
  } else {
    ## optimal solution found nothing to add, returning optimal solution
    return(list(DEP = object, SubLPOpt = SubLPDualSol, status = 0))
  }
})
