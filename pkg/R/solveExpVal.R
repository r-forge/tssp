##
## solveExpVal Method for objects of class "CDEPD"
##
setMethod(f = "solveExpVal", signature(object = "CDEPD"), definition = function(object, max.iter = 50){
  ## obtaining stochastic elements (all replicated to K, if applicable)
  Q <- getQ(object)
  W <- getW(object)
  H <- getH(object)
  Tlist <- getTech(object)
  K <- getK(object)
  p <- getProb(object)
  ## Calculating expected values for second stage inputs
  Qexp <- colSums(Q * p)
  Hexp <- colSums(H * p)
  Ttmp <- lapply(1:K, function(i) Tlist[[i]] * p[i])
  Texp <- Reduce('+', Ttmp)
  ## Create DEP and solve
  ExpValDep <- DEP(object@MP, q = Qexp, W = W, h = Hexp, Tech = Texp, SubDir = object@SubDir)
  ExpValSol <- solveDEP(ExpValDep, max.iter = max.iter)
  return(ExpValSol)
})
##
## solveExpVal Method for objects of class "CDEPS"
##
setMethod(f = "solveExpVal", signature(object = "CDEPS"), definition = function(object, max.iter = 50){
  oDEP <- dropCutsMP(object)
  callNextMethod(oDEP, max.iter = max.iter)
})
