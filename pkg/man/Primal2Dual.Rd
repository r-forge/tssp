\name{Primal2Dual}
\docType{methods}
\alias{Primal2Dual}
\alias{Primal2Dual,CLPD-method}

\title{Method for converting a primal LP to its dual representation}

\description{
  Additional arguments to the \code{Primal2Dual}-method pertinent to the
  defined S4-classes in this package are detailed below.
}

\usage{
\S4method{Primal2Dual}{CLPD}(object)  
}

\arguments{
  \item{object}{\code{CLPD}: an object of class \code{"CLPD"},
    ordinarily returned by a call to \code{LPD()}.}
}

\details{
  Unequality constraints in the primal LP are converted to equality
  constraints, first and a warning is issued if this should be the
  case. The variables bounds of the primal have to be non-negtaive. The
  dual has as objective coefficients the \code{rhs}-vector of the primal
  and the optimization direction is reversed. The constraints consist of
  the transposed \code{A} matrix, the primal objective coefficients
  become the \code{rhs} values of the dual and the relational operators
  are \dQuote{>=} in case of minimization and \dQuote{<=} in case of
  maximization. The variable bounds of the dual form are from
  \code{-Inf} to \code{Inf}. 
}

\value{
  \code{CLPD}: Returns the dual form of a LP.
}

\author{Bernhard Pfaff}

\keyword{methods}
