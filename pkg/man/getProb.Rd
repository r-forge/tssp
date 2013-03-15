\name{getProb}
\docType{methods}
\alias{getProb}
\alias{getProb,CDEPD-method}
\alias{getProb,CDEPS-method}

\title{Method for retrieving the scenario probabilities}

\description{
  Additional arguments to the \code{getProb}-method pertinent to the
  defined S4-classes in this package are detailed below.
}

\usage{
\S4method{getProb}{CDEPD}(object)  
\S4method{getProb}{CDEPS}(object)  
}

\arguments{
  \item{object}{\code{CDEPD} or \code{CDEPS}, ordinarily returned by
  either a call to \code{DEP()} or \code{solveDEP()}}
}

\value{\code{vector}: Returns the vector of scenario probabilities.
}

\author{Bernhard Pfaff}

\keyword{methods}
