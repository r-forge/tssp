\name{VSS}
\docType{methods}
\alias{VSS}
\alias{VSS,CDEPS-method}

\title{Method for calculating the value of the stochastic solution}

\description{
  Additional arguments to the \code{VSS}-method pertinent to the
  defined S4-classes in this package are detailed below.
}

\usage{
\S4method{VSS}{CDEPS}(object, max.iter = 50)  
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
VSS(TsLpSol)
}
}
\keyword{methods}
