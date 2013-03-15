\name{solvePerfInf}
\docType{methods}
\alias{solvePerfInf}
\alias{solvePerfInf,CDEPD-method}
\alias{solvePerfInf,CDEPS-method}

\title{Method for solving a DEP under perfect information}

\description{
  Additional arguments to the \code{solvePerfInf}-method pertinent to the
  defined S4-classes in this package are detailed below.
}

\usage{
\S4method{solvePerfInf}{CDEPD}(object, max.iter = 50)  
\S4method{solvePerfInf}{CDEPS}(object, max.iter = 50)  
}

\arguments{
  \item{object}{\code{CDEPD} or \code{CDEPS}: An object of class either
  class \code{"CDEPD"} or \code{"CDEPS"}, ordinarily returned by calls
  to either \code{DEP()} or \code{solveDEP()}, respectively.} 
  \item{max.iter}{\code{integer}: The maximum count of iterations.} 
}

\value{
  A \code{list} object with elements of class \code{"CDEPS"}.
}

\author{Bernhard Pfaff}

\seealso{
  \code{\link{DEP}}, \code{\link{solveDEP}},
  \code{\linkS4class{CDEPD}}, \code{\linkS4class{CDEPS}}
}

\examples{
example(DEP)
solvePerfInf(DEP)
}

\keyword{methods}
