\name{solveLPD}
\docType{methods}
\alias{solveLPD}
\alias{solveLPD,CLPD-method}

\title{Method for solving a Linear Program}

\description{
  Additional arguments to the \code{solveLPD}-method pertinent to the
  defined S4-classes in this package are detailed below.
}

\usage{
\S4method{solveLPD}{CLPD}(object, verbose = FALSE)  
}

\arguments{
  \item{object}{\code{CLPD}: An object of class \code{"CLPD"},
    ordinarily returned by a call to \code{LPD()}.}
  \item{verbose}{\code{logical}: Whether interim-out put of the solver
  should be displayed.} 
}

\details{This method is a wrapper to the \pkg{Rglpk}-function
  \code{Rglpk_solve_LP()}.
}

\value{
  An object of S4-class \code{"CLPS"}.
}

\author{Bernhard Pfaff}

\seealso{
  \code{\linkS4class{CLPS}}
}

\examples{
example(LPD)
solveLPD(MLP)
}

\keyword{methods}
