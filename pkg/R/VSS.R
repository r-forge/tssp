##
## VSS Method for objects of class "CDEPS"
##
setMethod(f = "VSS", signature(object = "CDEPS"), definition = function(object, max.iter = 50){
  ObjTSLP <- getOpt(object)
  OrgDep <- dropCutsMP(object)
  ExpValPar <- solveExpVal(OrgDep, max.iter = max.iter)@par
  xsol <- ExpValPar[attr(OrgDep@MP, "DecVar")]
  xobj <- getObj(OrgDep)[attr(OrgDep@MP, "DecVar")]
  FSS <- c(xobj %*% xsol)
  SSP <- createSubLP(OrgDep, x = xsol)
  SSS <- lapply(SSP, solveLPD)
  SSO <- unlist(lapply(SSS, getOpt))
  ans <- c(-1.0 * ObjTSLP + FSS + SSO %*% getProb(object))
  names(ans) <- "VSS"
  return(ans)
})
