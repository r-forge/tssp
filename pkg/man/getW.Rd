\name{getW}
\docType{methods}
\alias{getW}
\alias{getW,CDEPD-method}

\title{Method for retrieving the recourse-matrix}

\description{
  Additional arguments to the \code{getW}-method pertinent to the
  defined S4-classes in this package are detailed below.
}

\usage{
\S4method{getW}{CDEPD}(object)  
}

\arguments{
  \item{object}{\code{CDEPD}: ordinarily returned by a call to \code{DEP()}}
}

\value{\code{matrix}: Returns the (fixed) recourse-matrix in
  the second stage LP (sub-problems).
}

\author{Bernhard Pfaff}

\keyword{methods}
