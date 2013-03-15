\name{getMP}
\docType{methods}
\alias{getMP}
\alias{getMP,CDEPD-method}

\title{Method for retrieving the master problem}

\description{
  Additional arguments to the \code{getMP}-method pertinent to the
  defined S4-classes in this package are detailed below.
}

\usage{
\S4method{getMP}{CDEPD}(object)  
}

\arguments{
  \item{object}{\code{CDEPD}: ordinarily returned by a call to \code{DEP()}}
}

\value{\code{CLPD}: Returns the master-problem (first-stage LP).
}

\author{Bernhard Pfaff}

\keyword{methods}
