##
## solveLPD Method for objects of class "CLPD"
##
setMethod(f = "solveLPD", signature(object = "CLPD"), definition = function(object, verbose = FALSE){
  ans <- Rglpk_solve_LP(obj = getObj(object), mat = getA(object), dir = getDir(object), rhs = getRhs(object), bounds = getBounds(object), max = getMax(object), verbose = verbose)
  names(ans$solution) <- names(getObj(object))
  ans <- new("CLPS", LP = object, opt = ans$optimum, par = ans$solution, status = ans$status)
  return(ans)
})
