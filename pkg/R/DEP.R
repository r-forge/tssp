##
## Generator function for objects of class "CDEPD"
##
DEP <- function(MP, q, W, h, Tech, SubDir = NULL, prob = NULL){
  ## Check whether MP to be converted to standard form
  dir <- getDir(MP)
  if(any(dir != "==")){
    MP <- iq2eq(MP)
  }
  ## Objectives (second stage)
  if(is.vector(q)){
    q <- matrix(q, nrow = 1)
  }
  scenq <- nrow(q)
  ## RHS, first term
  if(is.vector(h)){
    h <- matrix(h, nrow = 1)
  }
  scenh <- nrow(h)
  ## RHS, second term
  if(is.matrix(Tech)){
    Tech <- list(Tech)
  }
  scenTech <- length(Tech)
  ## Determing the count of scenaries
  K <- as.integer(max(scenq, scenh, scenTech))
  ## Checking probabilities
  if(is.null(prob)){
    prob <- rep(1 / K, K)
  } else {
    if(length(prob) != K){
      stop("\nProbability vector has not the same length as count of scenarios.\n")}
    if(sum(prob) != 1.0){
      stop("\nProbalities of scenarios don't sum to one.\n")
    }
  }
  ## Creating relations for sub-problems
  if(is.null(SubDir)){
    SubDir <- rep("<=", nrow(W))
  } else {
    if(length(SubDir) != nrow(W)){
      stop("\n Length of relation vector is not equal to row dimension of W.\n")
    }
  }
  ## Recourse matrix (fixed)
  W <- as.matrix(W)
  ## Setting variable names
  if(is.null(colnames(W)) || is.null(colnames(q))){
    n2 <- ncol(q)
    colnames(W) <- paste("y", 1:n2, sep = "")
    colnames(q) <- colnames(W)
  }
  if(is.null(rownames(W))){
    m2 <- nrow(W)
    rownames(W) <- paste("RSP", 1:m2, sep = "")
  }
  if(is.null(colnames(h))) colnames(h) <- rownames(W)
  if(is.null(names(prob))) names(prob) <- paste("k = ", 1:K, sep = "")
  ans <- new("CDEPD", MP = MP, q = q, W = W, h = h, Tech = Tech, SubDir = SubDir, prob = prob, K = K)
  counter <- rep(0, 3)
  names(counter) <- c("Iter", "FeasCut", "OptCut")
  attr(ans, "Counter") <- counter
  ans
}
