\name{getSubLP}
\docType{methods}
\alias{getSubLP}
\alias{getSubLP,CDEPS-method}

\title{Method for retrieving solutions of sub-problems}

\description{
  Additional arguments to the \code{getSubLP}-method pertinent to the
  defined S4-classes in this package are detailed below.
}

\usage{
\S4method{getSubLP}{CDEPS}(object)  
}

\arguments{
  \item{object}{\code{CDEPS}: An object of class \code{"CDEPS"},
  ordinarily returned by a call to \code{solveDEP()}.} 
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
\dontrun{
example(solveDEP)
getSubLP(TsLpSol)
}
}

\keyword{methods}
