\name{solveExpVal}
\docType{methods}
\alias{solveExpVal}
\alias{solveExpVal,CDEPD-method}
\alias{solveExpVal,CDEPS-method}

\title{Method for solving a DEP under perfect information}

\description{
  Additional arguments to the \code{solveExpVal}-method pertinent to the
  defined S4-classes in this package are detailed below.
}

\usage{
\S4method{solveExpVal}{CDEPD}(object, max.iter = 50)  
\S4method{solveExpVal}{CDEPS}(object, max.iter = 50)  
}

\arguments{
  \item{object}{\code{CDEPD} or \code{CDEPS}: An object of class either
  class \code{"CDEPD"} or \code{"CDEPS"}, ordinarily returned by calls
  to either \code{DEP()} or \code{solveDEP()}, respectively.} 
  \item{max.iter}{\code{integer}: The maximum count of iterations.} 
}

\value{
  An object of class \code{"CDEPS"}.
}

\author{Bernhard Pfaff}

\seealso{
  \code{\link{DEP}}, \code{\link{solveDEP}},
  \code{\linkS4class{CDEPD}}, \code{\linkS4class{CDEPS}}
}

\examples{
example(DEP)
solveExpVal(DEP)
}

\keyword{methods}
