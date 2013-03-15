##
## getBounds Method for objects of class "CLPD"
##
setMethod(f = "getBounds", signature(object = "CLPD"), definition = function(object, mat = FALSE){
  ans <- slot(object, "bounds")
  if(mat){
    obj <- getObj(object)
    n <- length(obj)
    B <- ans
    ans <- matrix(c(rep(0, n), rep(Inf, n)), nrow = 2, ncol = n, byrow = TRUE)
    colnames(ans) <- names(obj)
    rownames(ans) <- c("Lower", "Upper")
    ans[1, B[[1]][[1]]] <- B[[1]][[2]]
    ans[2, B[[2]][[1]]] <- B[[2]][[2]]
  }
  return(ans)
})
##
## getBounds Method for objects of class "CLPS"
##
setMethod(f = "getBounds", signature(object = "CLPS"), definition = function(object, mat = FALSE){
  callNextMethod(object@LP, mat = mat)
})
##
## getBounds Method for objects of class "CDEPD"
##
setMethod(f = "getBounds", signature(object = "CDEPD"), definition = function(object, mat = FALSE){
  callNextMethod(object@MP, mat = mat)
})
