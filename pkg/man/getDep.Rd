\name{getDep}
\docType{methods}
\alias{getDep}
\alias{getDep,CDEPS-method}

\title{Method for retrieving DEP with potential cuts in master problem}

\description{
  Additional arguments to the \code{getDep}-method pertinent to the
  defined S4-classes in this package are detailed below.
}

\usage{
\S4method{getDep}{CDEPS}(object)  
}

\arguments{
  \item{object}{\code{CDEPS}: An object of class \code{"CDEPS"},
  ordinarily returned by a call to \code{solveDEP()}.} 
}

\value{
  An object of class \code{"CDEPD"}.
}

\author{Bernhard Pfaff}

\seealso{
  \code{\link{DEP}}, \code{\link{solveDEP}},
  \code{\linkS4class{CDEPD}}, \code{\linkS4class{CDEPS}}
}

\examples{
\dontrun{
example(solveDEP)
getDep(TsLpSol)
}
}

\keyword{methods}
