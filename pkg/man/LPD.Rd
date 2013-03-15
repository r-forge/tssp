\name{LPD}

\alias{LPD}

\title{
  Definition of Linear Program
}

\description{
  This function creates an object of class \code{"CLPD"}, by which a
  deterministic program is defined.
}

\usage{
LPD(obj, A, dir, rhs, bounds = NULL, max = FALSE)
}

\arguments{
  \item{obj}{\code{vector}: Coefficients in objective function.}
  \item{A}{\code{matrix}: The lhs-matrix of the constraints.}
  \item{dir}{\code{vector}: The relational operators in the
    constraints. Allowed are \code{"<="}, \code{"=="} or \code{">="}.}
  \item{rhs}{\code{vector}: The rhs-values of the constraints.}
  \item{bounds}{\code{NULL} or \code{list}: The lower and upper bounds of the
  variables. If left \code{NULL}, the default values of zero and
  infinity are used, otherwise a \code{list}-object as expected in
  \code{Rglpk_solve_LP()} must be provided.}
  \item{max}{\code{logical}: Whether the objective should be minimized
  (the default) or maximized.}
}

\value{
  An object of S4-class \code{"CLPD"}.
}

\author{
  Bernhard Pfaff
}

\references{
Birge, J. R. and Louveaux, F., \emph{Introduction to Stochastic
  Programming}, Springer Series in Operations Research and Financial
Engineering, Second Edition, 2004, New York: Springer.
}

\seealso{
  \code{\linkS4class{CLPD}}
}

\examples{
##
## Birge & Louveaux
## Chapter 5, Section 1a, master-problem
##
obj <- c(100, 150)
A <- matrix(c(1, 1,
              1, 0,
              0, 1),
            ncol = 2, nrow = 3, byrow = TRUE)
dir <- c("<=", ">=", ">=")
rhs <- c(120, 40, 20)
MLP <- LPD(obj, A, dir, rhs)
MLP
}

\keyword{algebra}
