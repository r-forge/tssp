\name{getH}
\docType{methods}
\alias{getH}
\alias{getH,CDEPD-method}

\title{Method for retrieving the absolute terms in rhs-constraints of
  second-stages}

\description{
  Additional arguments to the \code{getH}-method pertinent to the
  defined S4-classes in this package are detailed below.
}

\usage{
\S4method{getH}{CDEPD}(object)  
}

\arguments{
  \item{object}{\code{CDEPD}: ordinarily returned by a call to \code{DEP()}}
}

\value{\code{matrix}: Returns affine terms in the rhs-constraints of the
  second-stage problems.
}

\author{Bernhard Pfaff}

\keyword{methods}
