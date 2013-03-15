\name{EVPI}
\docType{methods}
\alias{EVPI}
\alias{EVPI,CDEPS-method}

\title{Method for calculating the expected value of perfect information}

\description{
  Additional arguments to the \code{EVPI}-method pertinent to the
  defined S4-classes in this package are detailed below.
}

\usage{
\S4method{EVPI}{CDEPS}(object, max.iter = 50)  
}

\arguments{
  \item{object}{\code{CDEPS}: An object of class \code{"CDEPS"},
    ordinarily returned by a call to \code{solveDEP()}.}
  \item{max.iter}{\code{integer}: The maximum count of iterations.} 
}

\value{
  \code{numeric}
}

\author{Bernhard Pfaff}

\seealso{
  \code{\link{solveDEP}}, \code{\linkS4class{CDEPS}}
}

\examples{
\dontrun{
example(solveDEP)
EVPI(TsLpSol)
}
}
\keyword{methods}
