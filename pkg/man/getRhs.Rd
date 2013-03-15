\name{getRhs}
\docType{methods}
\alias{getRhs}
\alias{getRhs,CLPD-method}
\alias{getRhs,CLPS-method}
\alias{getRhs,CDEPD-method}

\title{Method for retrieving rhs-constraints}

\description{
  Additional arguments to the \code{getRhs}-method pertinent to the
  defined S4-classes in this package are detailed below.
}

\usage{
\S4method{getRhs}{CLPD}(object)  
\S4method{getRhs}{CLPS}(object)
\S4method{getRhs}{CDEPD}(object) 
}

\arguments{
  \item{object}{\code{CLPD}, \code{CLPS} or \code{CDEPD}: ordinarily
  returned by calls to either \code{LPD()} or \code{solveLPD()} or
  \code{DEP()}, respectively.}
}

\value{
  \code{vector}: Values of rhs-constraints.
}

\author{Bernhard Pfaff}

\keyword{methods}
