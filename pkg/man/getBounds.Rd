\name{getBounds}
\docType{methods}
\alias{getBounds}
\alias{getBounds,CLPD-method}
\alias{getBounds,CLPS-method}
\alias{getBounds,CDEPD-method}

\title{Method for retrieving the variable bounds}

\description{
  Additional arguments to the \code{getBounds}-method pertinent to the
  defined S4-classes in this package are detailed below.
}

\usage{
\S4method{getBounds}{CLPD}(object, mat = FALSE)  
\S4method{getBounds}{CLPS}(object, mat = FALSE)  
\S4method{getBounds}{CDEPD}(object, mat = FALSE)  
}

\arguments{
  \item{object}{\code{CLPD}, \code{CLPS} or \code{CDEPD}: ordinarily
  returned by calls to either \code{LPD()} or \code{solveLPD()} or
  \code{DEP()}, respectively.}
  \item{mat}{\code{logical}: Whether the bounds should be returned as a
  \code{list}-object (the default) or as a \code{matrix}.}
}

\value{\code{list} or \code{matrix}: Returns the lower and upper
  variable bounds of the LP.
}

\author{Bernhard Pfaff}

\keyword{methods}
