\name{getOpt}
\docType{methods}
\alias{getOpt}
\alias{getOpt,CLPS-method}
\alias{getOpt,CDEPS-method}

\title{Method for retrieving the optimal value of the objective function}

\description{
  Additional arguments to the \code{getOpt}-method pertinent to the
  defined S4-classes in this package are detailed below.
}

\usage{
\S4method{getOpt}{CLPS}(object)  
\S4method{getOpt}{CDEPS}(object)  
}

\arguments{
  \item{object}{\code{CLPS} or \code{CDEPS}: Ordinarily returned by
  either a call to \code{solveLPD()} or \code{solveLPD()},
  respectively.} 
}

\value{\code{numeric}: Returns the optimal value of the objective function.
}

\author{Bernhard Pfaff}

\keyword{methods}
