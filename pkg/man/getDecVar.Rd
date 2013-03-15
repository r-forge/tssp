\name{getDecVar}
\docType{methods}
\alias{getDecVar}
\alias{getDecVar,CLPS-method}
\alias{getDecVar,CDEPS-method}

\title{Method for retrieving the decision variables in objective}

\description{
  Additional arguments to the \code{getDecVar}-method pertinent to the
  defined S4-classes in this package are detailed below.
}

\usage{
\S4method{getDecVar}{CLPS}(object)  
\S4method{getDecVar}{CDEPS}(object)  
}

\arguments{
  \item{object}{\code{CLPS} or \code{CDEPS}: Ordinarily returned by
  either a call to \code{solveLPD()} or \code{solveLPD()},
  respectively.}   
}

\details{
  Objects of class \code{"CLPD"} have an attribute \dQuote{DecVar},
  which contain the names of the decision variables. These are the names
  of the variables in the objective except for slack variables, that might
  have been included by the transformation of inequality to equality
  constraints and/or the recourse function.
}

\value{\code{vector}: Returns the values of the decision variables in the
  objective.
}

\author{Bernhard Pfaff}

\keyword{methods}
