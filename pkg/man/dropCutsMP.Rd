\name{dropCutsMP}
\docType{methods}
\alias{dropCutsMP}
\alias{dropCutsMP,CDEPS-method}

\title{Method for removing feasability and optimality cuts}

\description{
  Additional arguments to the \code{dropCutsMP}-method pertinent to the
  defined S4-classes in this package are detailed below.
}

\usage{
\S4method{dropCutsMP}{CDEPS}(object)  
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
  \code{\link{solveDEP}}, \code{\linkS4class{CDEPD}}
}

\keyword{methods}
