\name{getPar}
\docType{methods}
\alias{getPar}
\alias{getPar,CLPS-method}
\alias{getPar,CDEPS-method}

\title{Method for retrieving the optimal parameters}

\description{
  Additional arguments to the \code{getPar}-method pertinent to the
  defined S4-classes in this package are detailed below.
}

\usage{
\S4method{getPar}{CLPS}(object)  
\S4method{getPar}{CDEPS}(object)  
}

\arguments{
  \item{object}{\code{CLPS} or \code{CDEPS}: Ordinarily returned by
  either a call to \code{solveLPD()} or \code{solveLPD()},
  respectively.} 
}

\value{\code{vector}: Returns the optimal parameters of the objective function.
}

\author{Bernhard Pfaff}

\keyword{methods}
