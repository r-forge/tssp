\name{getStatus}
\docType{methods}
\alias{getStatus}
\alias{getStatus,CLPS-method}
\alias{getStatus,CDEPS-method}

\title{Method for retrieving the status of the solver}

\description{
  Additional arguments to the \code{getStatus}-method pertinent to the
  defined S4-classes in this package are detailed below.
}

\usage{
\S4method{getStatus}{CLPS}(object)  
\S4method{getStatus}{CDEPS}(object)  
}

\arguments{
  \item{object}{\code{CLPS} or \code{CDEPS}: Ordinarily returned by
  either a call to \code{solveLPD()} or \code{solveLPD()},
  respectively.}    
}

\value{\code{integer}: A zero value indicates convergence of the
  returned solver's solution; else non-convergence.
}

\author{Bernhard Pfaff}

\keyword{methods}
