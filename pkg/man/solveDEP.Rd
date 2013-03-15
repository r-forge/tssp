\name{solveDEP}
\docType{methods}
\alias{solveDEP}
\alias{solveDEP,CDEPD-method}

\title{Method for solving a deterministic equivalent program}

\description{
  Additional arguments to the \code{solveDEP}-method pertinent to the
  defined S4-classes in this package are detailed below.
}

\usage{
\S4method{solveDEP}{CDEPD}(object, max.iter = 50)  
}

\arguments{
  \item{object}{\code{CDEPD}: An object of class \code{"CDEP"},
    ordinarily returned by a call to \code{DEP()}.}
  \item{max.iter}{\code{integer}: The maximum count of iterations.} 
}

\value{
  An object of S4-class \code{"CDEPS"}.
}

\author{Bernhard Pfaff}

\seealso{
  \code{\linkS4class{CDEPS}}
}

\examples{
example(DEP)
TsLpSol <- solveDEP(DEP)
TsLpSol
}

\keyword{methods}
