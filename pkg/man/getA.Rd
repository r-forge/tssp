\name{getA}
\docType{methods}
\alias{getA}
\alias{getA,CLPD-method}
\alias{getA,CLPS-method}
\alias{getA,CDEPD-method}

\title{Method for retrieving constraint matrix \code{A}}

\description{
  Additional arguments to the \code{getA}-method pertinent to the
  defined S4-classes in this package are detailed below.
}

\usage{
\S4method{getA}{CLPD}(object)  
\S4method{getA}{CLPS}(object)  
\S4method{getA}{CDEPD}(object)  
}

\arguments{
  \item{object}{\code{CLPD}, \code{CLPS} or \code{CDEPD}: ordinarily
  returned by calls to either \code{LPD()} or \code{solveLPD()} or
  \code{DEP()}, respectively.}
}

\value{\code{matrix}: Returns the constraint matrix \code{A} of the
  formulated LP.   
}

\author{Bernhard Pfaff}

\keyword{methods}
