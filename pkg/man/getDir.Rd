\name{getDir}
\docType{methods}
\alias{getDir}
\alias{getDir,CLPD-method}
\alias{getDir,CLPS-method}
\alias{getDir,CDEPD-method}

\title{Method for retrieving the relational operators in the constraints}

\description{
  Additional arguments to the \code{getDir}-method pertinent to the
  defined S4-classes in this package are detailed below.
}

\usage{
\S4method{getDir}{CLPD}(object)  
\S4method{getDir}{CLPS}(object)  
\S4method{getDir}{CDEPD}(object)  
}

\arguments{
  \item{object}{\code{CLPD}, \code{CLPS} or \code{CDEPD}: ordinarily
  returned by calls to either \code{LPD()} or \code{solveLPD()} or
  \code{DEP()}, respectively.} 
}

\value{\code{vector}: Returns the relational operators in the constraints.
}

\author{Bernhard Pfaff}

\keyword{methods}
