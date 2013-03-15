##
## iq2eq Method for objects of class "CLPD"
##
setMethod(f = "iq2eq", signature(object = "CLPD"), definition = function(object){
  dir <- getDir(object)
  n <- length(getObj(object))
  idxgt <- which(dir == ">=")
  countgt <- length(idxgt)
  if(countgt > 0){
    Snames <- paste("S", idxgt, sep = "")
    A <- getA(object)
    Acols <- matrix(0, nrow = nrow(A), ncol = countgt)
    Acols[cbind(idxgt, 1:countgt)] <- -1
    colnames(Acols) <- Snames
    object@A <- cbind(A, Acols)
    objex <- c(object@obj, rep(0, countgt))
    names(objex) <- c(names(object@obj), Snames)
    object@obj <- objex 
    object@dir[idxgt] <- "=="
    B <- getBounds(object)
    B$lower[[1]] <- c(B$lower[[1]], (n + 1):(n + countgt))
    B$lower[[2]] <- c(B$lower[[2]], rep(0, countgt))
    B$upper[[1]] <- c(B$upper[[1]], (n + 1):(n + countgt))
    B$upper[[2]] <- c(B$upper[[2]], rep(Inf, countgt))
    object@bounds <- B
  }
  idxlt <- which(dir == "<=")
  countlt <- length(idxlt)
  if(countlt > 0){
    n <- length(getObj(object))
    Snames <- paste("S", idxlt, sep = "")
    A <- getA(object)
    Acols <- matrix(0, nrow = nrow(A), ncol = countlt)
    Acols[cbind(idxlt, 1:countlt)] <- 1
    colnames(Acols) <- Snames
    object@A <- cbind(A, Acols)
    objex <- c(object@obj, rep(0, countlt))
    names(objex) <- c(names(object@obj), Snames)
    object@obj <- objex 
    object@dir[idxlt] <- "=="
    B <- getBounds(object)
    B$lower[[1]] <- c(B$lower[[1]], (n + 1):(n + countlt))
    B$lower[[2]] <- c(B$lower[[2]], rep(0, countlt))
    B$upper[[1]] <- c(B$upper[[1]], (n + 1):(n + countlt))
    B$upper[[2]] <- c(B$upper[[2]], rep(Inf, countlt))
    object@bounds <- B
  }
  if(validObject(object)){
    return(object)
  } else {
    stop("\nConverting unequality to equality constraints failed.\n")
  }
})
