\name{getQ}
\docType{methods}
\alias{getQ}
\alias{getQ,CDEPD-method}

\title{Method for retrieving the coefficients of the second-stage objectives}

\description{
  Additional arguments to the \code{getQ}-method pertinent to the
  defined S4-classes in this package are detailed below.
}

\usage{
\S4method{getQ}{CDEPD}(object)  
}

\arguments{
  \item{object}{\code{CDEPD}: ordinarily returned by a call to \code{DEP()}}
}

\value{\code{matrix}: Returns the coefficients of the objective(s) in
  the second stage LP (sub-problems).
}

\author{Bernhard Pfaff}

\keyword{methods}
