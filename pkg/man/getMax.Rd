\name{getMax}
\docType{methods}
\alias{getMax}
\alias{getMax,CLPD-method}
\alias{getMax,CLPS-method}
\alias{getMax,CDEPD-method}

\title{Method for retrieving the direction of optimization}

\description{
  Additional arguments to the \code{getMax}-method pertinent to the
  defined S4-classes in this package are detailed below.
}

\usage{
\S4method{getMax}{CLPD}(object)  
\S4method{getMax}{CLPS}(object)  
\S4method{getMax}{CDEPD}(object)  
}

\arguments{
  \item{object}{\code{CLPD}, \code{CLPS} or \code{CDEPD}: ordinarily
  returned by calls to either \code{LPD()} or \code{solveLPD()} or
  \code{DEP()}, respectively.} 
}

\value{
  \code{logical}: Whether objective shall be minimized or maximized.
}

\author{Bernhard Pfaff}

\keyword{methods}
