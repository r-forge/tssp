##
## addTheta Method for objects of class "CLPD"
##
setMethod(f = "addTheta", signature(object = "CLPD"), definition = function(object){
  B <- getBounds(object, mat = TRUE)
  if(any(B[1, ] != 0.0)){
    stop("\nLower Bounds of variables must be zero, re-specify LP.\n")
  }
  if(any(B[2, ] != Inf)){
    stop("\nUpper Bounds of variables must be Inf, re-specify LP.\n")
  }
  dir <- getDir(object)
  if(any(dir != "==")){
    object <- iq2eq(object)
  }
  DimA <- dim(getA(object))
  object <- addVar(object, add2obj = 1, newAcol = matrix(rep(0, DimA[1]), ncol = 1), varNames = "theta",
                   newBound = list(lower = list(ind = 1, val = -Inf), upper = list(ind = 1, val = Inf))) 
  if(validObject(object)){
    return(object)
  } else {
    stop("\nAdding 'theta' to objective failed.\n")
  }
})
##
## addTheta Method for objects of class "CDEPD"
##
setMethod(f = "addTheta", signature(object = "CDEPD"), definition = function(object){
  MP <- getMP(object)
  MP <- addTheta(MP)
  object@MP <- MP
  return(object)
})
