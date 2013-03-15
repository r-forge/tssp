##
## dropCutsMP Method for objects of class "CDEPS"
##
setMethod(f = "dropCutsMP", signature(object = "CDEPS"), definition = function(object){
  CutsTotal <- sum(attr(object@DEP, "Counter")[c(2, 3)])
  if(CutsTotal > 0){
    OrgMP <- getMP(object@DEP)
    A <- getA(OrgMP)
    if("theta" %in% colnames(A)){
      ThetaIdx <- which(colnames(A) == "theta")
      A <- A[, -ThetaIdx]
      Obj <- getObj(OrgMP)
      OrgMP@obj <- Obj[-ThetaIdx]
      B <- getBounds(OrgMP)
      OrgMP@bounds <- lapply(B, function(x) lapply(x, function(y) y[-ThetaIdx]))
    }
    Dir <- getDir(OrgMP)
    Rhs <- getRhs(OrgMP)
    ResTotal <- nrow(A)
    ResSelect <- 1:(ResTotal - CutsTotal)
    OrgMP@A <- A[ResSelect, , drop = FALSE]
    OrgMP@dir <- Dir[ResSelect]
    OrgMP@rhs <- Rhs[ResSelect]
    object@DEP@MP <- OrgMP
    return(object@DEP)
  } else {
    return(object@DEP)
  }
})
