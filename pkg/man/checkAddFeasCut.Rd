\name{checkAddFeasCut}
\docType{methods}
\alias{checkAddFeasCut}
\alias{checkAddFeasCut,CDEPD-method}

\title{Method for checking/adding feasability cuts to master-problem}

\description{
  Additional arguments to the \code{checkAddFeasCut}-method pertinent to the
  defined S4-classes in this package are detailed below.
}

\usage{
\S4method{checkAddFeasCut}{CDEPD}(object, x, Rhs = NULL)  
}

\arguments{
  \item{object}{\code{CDEPD}: ordinarily returned by a call to \code{DEP()}.}
  \item{x}{\code{vector}: The values for the decision variables of the
    master problem.}
  \item{Rhs}{\code{NULL} or \code{matrix}: By default the
  rhs-constraints are computed for a given value of \eqn{\mathbf{x}} by
  invoking \code{createRhsSubLP()}. Otherwise, a suitable \code{matrix}
  object.} 
}

\value{\code{CDEPD}: Returns a \code{"CDEPD"}-object; either unchanged
  to the supplied \code{object} or by an amended feasability
  cut-constraint in the slot \code{"MP"} of the object.
}

\author{Bernhard Pfaff}

\examples{
##
## Birge & Louveaux
## Chapter 5, Section 1.b, 
##
## Master problem
obj <- c(3, 2)
A <- diag(2)
dir <- c(">=", ">=")
rhs <- c(0, 0)
MP <- LPD(obj, A, dir, rhs)
MPsF <- iq2eq(MP)
MPsF
## Sub-problems (using slack variables)
q <- c(-15, -12)
W <- matrix(c(3, 2,
              2, 5,
              1, 0,
              0, 1,
              1, 0,
              0, 1),
            nrow = 6, ncol = 2, byrow = TRUE)
Tech <- matrix(c(-1, 0,
                 0, -1,
                 0, 0,
                 0, 0,
                 0, 0,
                 0, 0),
               nrow = 6, ncol = 2, byrow = TRUE)
h1 <- c(0, 0, 0.8 * 4, 0.8 * 4, 4, 4)
h2 <- c(0, 0, 0.8 * 4, 0.8 * 8, 4, 8)
h3 <- c(0, 0, 0.8 * 6, 0.8 * 4, 6, 4)
h4 <- c(0, 0, 0.8 * 6, 0.8 * 8, 6, 8)
H <- rbind(h1, h2, h3, h4)
SubDir <- c("<=", "<=", ">=", ">=", "<=", "<=")
FC <- DEP(MP = MPsF, q = q, W = W, h = H, SubDir = SubDir, Tech = Tech)
FC1Cut <- checkAddFeasCut(FC, x = c(0, 0))
getMP(FC1Cut)
}

\keyword{methods}
