##
## solvePerfInf Method for objects of class "CDEPD"
##
setMethod(f = "solvePerfInf", signature(object = "CDEPD"), definition = function(object, max.iter = 50){
  ## Creating stochastic elements (all replicated to K, if applicable)
  Q <- getQ(object)
  H <- getH(object)
  Tlist <- getTech(object)
  K <- getK(object)
  DepSingleScen <- lapply(1:K, function(i) DEP(MP = object@MP, q = Q[i, ], W = object@W, h = H[i, ], Tech = Tlist[[i]], SubDir = object@SubDir))
  ans <- lapply(DepSingleScen, solveDEP, max.iter = max.iter)
  return(ans)
})
##
## solvePerfInf Method for objects of class "CDEPS"
##
setMethod(f = "solvePerfInf", signature(object = "CDEPS"), definition = function(object, max.iter = 50){
  oDEP <- dropCutsMP(object)
  solvePerfInf(oDEP, max.iter = max.iter)
})
