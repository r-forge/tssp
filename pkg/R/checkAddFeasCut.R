##
## checkAddFeasCut Method for objects of class "CDEPD"
##
setMethod(f = "checkAddFeasCut", signature(object = "CDEPD"), definition = function(object, x, Rhs = NULL){
  if(is.null(Rhs)) Rhs <- createRhsSubLP(object, x)
  if(is.null(names(x))) names(x) <- attr(object@MP, "DecVar")
  K <- getK(object)
  W <- getW(object)
  m2 <- nrow(W)
  n2 <- ncol(W)
  ## Initialize list object for output
  FeasLPD <- list()
  length(FeasLPD) <- K
  ## Create Inputs to LP
  FeasCutObj <- c(rep(1, m2), rep(0, n2))
  Ident <- diag(m2)
  FeasA <- cbind(Ident, W)
  for(i in 1:K){
    FeasLPD <- LPD(obj = FeasCutObj, A = FeasA, dir = object@SubDir, rhs = Rhs[i, ])
    FeasLPDsF <- iq2eq(FeasLPD)
    FeasLPDD <- Primal2Dual(FeasLPDsF)
    FeasLPDDSol <- solveLPD(FeasLPDD)
    FeasLPDDOpt <- getOpt(FeasLPDDSol)
    if(FeasLPDDOpt > 0){
      Sigma <- getPar(FeasLPDDSol)
      Tlist <- getTech(object)
      if(length(Tlist) > 1){
        D <- t(Sigma) %*% Tlist[[i]]
      } else {
        D <- t(Sigma) %*% Tlist[[1]]
      }
      d <- t(Sigma) %*% getH(object)[i, ]
      MP <- getMP(object)
      obj <- getObj(MP)
      Arow <- matrix(0, nrow = 1, ncol = length(obj))
      colnames(Arow) <- names(obj)
      rownames(Arow) <- "FC"
      Arow[1, names(x)] <- D
      MP <- addCon(MP, A = Arow, dir = ">=", rhs = d)
      object@MP <- MP
      attr(object, "Counter")[2] <- attr(object, "Counter")[2] + 1
      break
    }
  }
  return(object)
})
