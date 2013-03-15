##
## show Method for objects of class "CLPD"
##
setMethod(f = "show", signature(object = "CLPD"), definition = function(object){
  obj <- getObj(object)
  A <- getA(object)
  dir <- getDir(object)
  b <- getRhs(object)
  B <- getBounds(object)
  n <- length(obj)
  title <- "Definition of Linear Program:"
  cat(paste(title, "\n"))
  cat(paste(rep("=", nchar(title)), collapse = ""))
  cat("\n")
  cat(c("Variables: ", paste(names(obj), collapse = ", "), "\n"))
  cat(paste("Maximization:", getMax(object), "\n"))
  cat("\n")
  cat("Objective function (rounded):\n")
  print(round(obj, 2))
  cat("\n")
  cat(paste("Number of restrictions (total):", nrow(A), "\n"))
  cat("Restrictions (rounded):\n")
  Rnames <- rownames(A)
  for(i in 1:nrow(A)){
    cat(c(paste(Rnames[i], ": ", sep = ""), paste(paste(round(A[i, ], 2), names(obj), sep = "*"), collapse = " + "), dir[i], round(b[i], 2), "\n")) 
  }
  cat("\n")
  cat("Bounds on variables (rounded):\n")
  print(round(getBounds(object, mat = TRUE), 2))
  cat("\n")
})
##
## show Method for objects of class "CLPS"
##
setMethod(f = "show", signature(object = "CLPS"), definition = function(object){
  obj <- getObj(object@LP)
  title <- "Solution of Linear Program:"
  cat(paste(title, "\n"))
  cat(paste(rep("=", nchar(title)), collapse = ""))
  cat("\n")
  cat(c("Value of objective (rounded): ", round(object@opt, 2), "\n"))
  cat("Solution (rounded):\n")
  par <- object@par
  names(par) <- names(obj)
  print(round(par, 2))
  cat("\n")
  cat(paste("Status of Solver:", object@status, "\n"))
})
##
## show Method for objects of class "CDEPD"
##
setMethod(f = "show", signature(object = "CDEPD"), definition = function(object){
  obj <- getObj(object)
  A <- getA(object)
  dir <- getDir(object)
  b <- getRhs(object)
  B <- getBounds(object)
  n <- length(obj)
  title <- "Definition of Master Program:"
  cat(paste(title, "\n"))
  cat(paste(rep("=", nchar(title)), collapse = ""))
  cat("\n")
  cat(c("Variables: ", paste(names(obj), collapse = ", "), "\n"))
  cat(paste("Maximization:", getMax(object), "\n"))
  cat("\n")
  cat("Objective function (rounded):\n")
  print(round(obj, 2))
  cat("\n")
  cat(paste("Number of restrictions (total):", nrow(A), "\n"))
  cat("Restrictions (rounded):\n")
  Rnames <- rownames(A)
  for(i in 1:nrow(A)){
    cat(c(paste(Rnames[i], ": ", sep = ""), paste(paste(round(A[i, ], 2), names(obj), sep = "*"), collapse = " + "), dir[i], round(b[i], 2), "\n")) 
  }
  cat("\n")
  cat("Bounds on variables (rounded):\n")
  print(round(getBounds(object, mat = TRUE), 2))
  cat("\n")
  title <- "Variables and Dimension of Second Stage Linear Programs:"
  cat(paste(title, "\n"))
  cat(paste(rep("=", nchar(title)), collapse = ""))
  cat("\n")
  Q <- getQ(object)
  cat(c("Variables: ", paste(colnames(Q), collapse = ", "), "\n"))
  cat(paste("Count of restrictions:", nrow(getW(object)), "\n"))
  cat(paste("Count of scenarios:", getK(object), "\n"))
})
##
## show Method for objects of class "CDEPS"
##
## Method show for objects of class CDEPS
setMethod(f = "show", signature(object = "CDEPS"), definition = function(object){
  title <- "Solution of Deterministic Equivalent Program:"
  cat(paste(title, "\n"))
  cat(paste(rep("=", nchar(title)), collapse = ""))
  cat("\n\n")
  cat(paste("Objective (rounded): ", round(object@opt, 2), "\n"))
  cat("Parameters (rounded):\n")
  print(round(object@par, 2))
  cat(paste("\nStatus:", object@status, "\n"))
})

