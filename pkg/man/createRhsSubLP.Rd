\name{createRhsSubLP}
\docType{methods}
\alias{createRhsSubLP}
\alias{createRhsSubLP,CDEPD-method}

\title{Method for evaluating rhs-constraints of sub-problems}

\description{
  Additional arguments to the \code{createRhsSubLP}-method pertinent to the
  defined S4-classes in this package are detailed below.
}

\usage{
\S4method{createRhsSubLP}{CDEPD}(object, x)  
}

\arguments{
  \item{object}{\code{CDEPD}: ordinarily returned by a call to \code{DEP()}}
  \item{x}{\code{vector}: The values for the decision variables of the
  master problem}
}

\value{\code{matrix}: Returns the rhs-constraints of the sub-problems
  (per row of a scenario), \emph{i.e.} \eqn{\mathbf{h_k} - T_k \mathbf{x}} for \eqn{k =
  1, \ldots, K}.
}

\author{Bernhard Pfaff}

\keyword{methods}
