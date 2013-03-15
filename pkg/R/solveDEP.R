##
## solveDEP Method for objects of class "CLPD"
##
setMethod(f = "solveDEP", signature(object = "CDEPD"), definition = function(object, max.iter = 50){
  ## Initial solution of problem
  ## Amend MP by theta
  MP <- getMP(object)
  MPsF <- iq2eq(MP)
  MPsFTheta <- addTheta(MPsF)
  MPS <- solveLPD(MPsFTheta)
  x <- getDecVar(MPS)
  object@MP <- MPsFTheta
  i <- 1
  while(i <= max.iter){
    ## check and add feasability cut
    m1 <- nrow(getA(object))
    Rhs <- createRhsSubLP(object, x)
    objectF <- checkAddFeasCut(object, x = x, Rhs = Rhs)
    m1Feas <- nrow(getA(objectF))
    while(m1Feas > m1){
      MPS <- solveLPD(getMP(objectF))
      x <- getDecVar(MPS)
      object <- objectF
      m1 <- nrow(getA(object))
      Rhs <- createRhsSubLP(object, x)
      objectF <- checkAddFeasCut(object, x = x, Rhs = Rhs)
      m1Feas <- nrow(getA(objectF))
    }
    ## check and add optimaliy cut
    if(attr(object, "Counter")[3] == 0){
      theta <- -Inf
    } else {
      theta <- getPar(MPS)["theta"]
    }
    tmp <- checkAddOptCut(object, x = x, theta = theta, Rhs = Rhs)
    object <- tmp$DEP
    MPS <- solveLPD(getMP(object))
    if(tmp$status == 0){
      ans <- new("CDEPS", DEP = tmp$DEP, par = getPar(MPS), opt = getOpt(MPS), SubLPOpt = tmp$SubLPOpt, status = as.integer(tmp$status))
      return(ans)
    } else {
      x <- getDecVar(MPS)
      i <- i + 1
      attr(object, "Counter")[1] <- i
    }
  }
  warning("\nNot converged for 'max.iter'.\n")
  ans <- new("CDEPS", DEP = tmp$DEP, par = getPar(MPS), opt = getOpt(MPS), SubLPOpt = tmp$SubLPOpt, status = as.integer(tmp$status))
  return(ans)
})
