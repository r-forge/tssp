\name{addVar}
\docType{methods}
\alias{addVar}
\alias{addVar,CLPD-method}

\title{Method for adding variables to a linear program}

\description{
  Additional arguments to the \code{addVar}-method pertinent to the
  defined S4-classes in this package are detailed below.
}

\usage{
\S4method{addVar}{CLPD}(object, add2obj, newAcol, varNames = NULL, newBound = NULL, rhs = NULL)  
}

\arguments{
  \item{object}{\code{CLPD}: an object of class \code{"CLPD"}, ordinarily returned by a call to \code{LPD()}.}
  \item{add2obj}{\code{vector}: The coefficients to be added to the objective function.}
  \item{newAcol}{\code{matrix}: The columns to be added to the constraint matrix \code{A}.}
  \item{varNames}{\code{NULL} or \code{vector}: The character vector of variable names; if left \code{NULL} and \code{add2obj} has no names, then generic names will be created.}
  \item{newBound}{\code{NULL} or \code{list}: If left \code{NULL}, the default bounds in \pkg{Rglpk} will be used, otherwise a \code{list}-object as expected in \code{Rglpk_solve_LP()}.}  
  \item{rhs}{\code{NULL} or \code{vector}: The changed values for the rhs-constraints, if applicable.}
}

\value{
  \code{"CLPD"}: The LP definition with the newly included variables.
}

\author{Bernhard Pfaff}

\keyword{methods}
