##
## Primal2Dual Method for objects of class "CLPD"
##
setMethod(f = "Primal2Dual", signature(object = "CLPD"), definition = function(object){
  dir <- getDir(object)
  if(any(dir != "==")){
    warning("\nConverting unequality to equality restrictions by adding slack variables.\n")
  }
  sF <- iq2eq(object)
  n <- length(getRhs(sF))
  B <- list(lower = list(ind = 1:n, val = rep(-Inf, n)),
            upper = list(ind = 1:n, val = rep(Inf, n)))
  if(getMax(sF)){
    ans <- LPD(obj = getRhs(sF), A = t(getA(sF)), dir = rep(">=", ncol(sF@A)), rhs = getObj(sF), bounds = B, max = FALSE)
  } else {
    ans <- LPD(obj = getRhs(sF), A = t(getA(sF)), dir = rep("<=", ncol(sF@A)), rhs = getObj(sF), bounds = B, max = TRUE)
  }
  return(ans)
})
