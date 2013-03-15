\name{checkAddOptCut}
\docType{methods}
\alias{checkAddOptCut}
\alias{checkAddOptCut,CDEPD-method}

\title{Method for checking/adding optimality cuts to master-problem}

\description{
  Additional arguments to the \code{checkAddOptCut}-method pertinent to the
  defined S4-classes in this package are detailed below.
}

\usage{
\S4method{checkAddOptCut}{CDEPD}(object, x, theta, Rhs = NULL)  
}

\arguments{
  \item{object}{\code{CDEPD}: ordinarily returned by a call to \code{DEP()}.}
  \item{x}{\code{vector}: The values for the decision variables of the
    master problem}
  \item{theta}{\code{numeric}: The value of the recourse function.}
  \item{Rhs}{\code{NULL} or \code{matrix}: By default the
  rhs-constraints are computed for a given value of \eqn{\mathbf{x}} by
  invoking \code{createRhsSubLP()}. Otherwise, a suitable \code{matrix}
  object.} 
}

\value{\code{list}: Returns a \code{list}-object with named elements
  \code{DEP} for the \code{"CDEPD"} object, \code{SubLPOpt} a
  \code{list} itself with the solved sub-problems and \code{status}
  taking a value of \code{1} if an optimality has been added to the
  master-problem, or \code{0} if not.
}

\author{Bernhard Pfaff}

\examples{
##
## Birge & Louveaux
## Chapter 5, Section 1.a, 
##
## Master problem
obj <- c(100, 150)
A <- matrix(c(1, 1,
              1, 0,
              0, 1),
            ncol = 2, nrow = 3, byrow = TRUE)
dir <- c("<=", ">=", ">=")
rhs <- c(120, 40, 20)
MLP <- LPD(obj, A, dir, rhs)
MLP
## Defining vectors and matrices for second stage
W <- matrix(c(6, 10,
              8, 5,
              1, 0,
              0, 1),
            ncol = 2, byrow = TRUE)
Tech <- matrix(c(-60, 0,
               0, -80,
               0, 0,
               0, 0),
             ncol = 2, byrow = TRUE)
## scenario 1
ss1obj <- c(-24, -28)
h1 <- c(0, 0, 500, 100)
## scenario 2
ss2obj <- c(-28, -32)
h2 <- c(0, 0, 300, 300)
## probabilities
p <- c(0.4, 0.6)
## combining objective and absolute rhs values
q <- rbind(ss1obj, ss2obj)
h <- rbind(h1, h2)
## Creating DEP object
OC <- DEP(MP = MLP, q = q, W = W, h = h, Tech = Tech, prob = p)
OC <- addTheta(OC)
x <- getDecVar(solveLPD(MLP))
OC1Cut <- checkAddOptCut(OC, x = x, theta = -Inf)
getMP(OC1Cut$DEP)
}

\keyword{methods}
