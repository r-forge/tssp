\name{createSubLP}
\docType{methods}
\alias{createSubLP}
\alias{createSubLP,CDEPD-method}

\title{Method for creating sub-problems}

\description{
  Additional arguments to the \code{createSubLP}-method pertinent to the
  defined S4-classes in this package are detailed below.
}

\usage{
\S4method{createSubLP}{CDEPD}(object, x, Rhs = NULL)  
}

\arguments{
  \item{object}{\code{CDEPD}: ordinarily returned by a call to \code{DEP()}}
  \item{x}{\code{vector}: The values for the decision variables of the
    master problem}
  \item{Rhs}{\code{NULL} or \code{matrix}: By default the
  rhs-constraints are computed for a given value of \eqn{\mathbf{x}} by
  invoking \code{createRhsSubLP()}. Otherwise, a suitable \code{matrix}
  object.} 
}

\value{\code{list}: Returns a \code{list}-object with \code{"CLPD"}
  elements representing the sub-problems for a given value of \eqn{\mathbf{x}}.
}

\author{Bernhard Pfaff}

\keyword{methods}
