\name{getObj}
\docType{methods}
\alias{getObj}
\alias{getObj,CLPD-method}
\alias{getObj,CLPS-method}
\alias{getObj,CDEPD-method}

\title{Method for retrieving the coefficients in the objective function}

\description{
  Additional arguments to the \code{getObj}-method pertinent to the
  defined S4-classes in this package are detailed below.
}

\usage{
\S4method{getObj}{CLPD}(object)  
\S4method{getObj}{CLPS}(object)  
\S4method{getObj}{CDEPD}(object)  
}

\arguments{
  \item{object}{\code{CLPD}, \code{CLPS} or \code{CDEPD}: ordinarily
  returned by calls to either \code{LPD()} or \code{solveLPD()} or
  \code{DEP()}, respectively.} 
}

\value{\code{vector}: Returns the vector of the coefficients in the
  objective function.
}

\author{Bernhard Pfaff}

\keyword{methods}
