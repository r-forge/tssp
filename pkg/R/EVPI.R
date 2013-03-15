##
## EVPI Method for objects of class "CDEPS"
##
setMethod(f = "EVPI", signature(object = "CDEPS"), definition = function(object, max.iter = 50){
  ObjTSLP <- getOpt(object)
  SingleScens <- solvePerfInf(object, max.iter = max.iter)
  SingleScenp <- c(unlist(lapply(SingleScens, function(x) x@opt)) %*% getProb(object))
  ans <- -1.0 * SingleScenp + ObjTSLP
  names(ans) <- "EVPI"
  return(ans)
})
