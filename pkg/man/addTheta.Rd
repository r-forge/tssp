\name{addTheta}
\docType{methods}
\alias{addTheta}
\alias{addTheta,CLPD-method}
\alias{addTheta,CDEPD-method}

\title{Method for adding \code{theta} coefficient to objective}

\description{
  Additional arguments to the \code{addTheta}-method pertinent to the
  defined S4-classes in this package are detailed below.
}

\usage{
\S4method{addTheta}{CLPD}(object)  
\S4method{addTheta}{CDEPD}(object)  
}

\arguments{
  \item{object}{\code{CLPD} or \code{CDEPD}: an object of class
  \code{"CLPD"} or \code{"CDEPD"}, ordinarily returned by a call to
  either \code{LPD()} or \code{DEP()}, respectively.}
}

\details{This method adds the \eqn{theta} coefficient to the objective
  function of the master linear problem (MLP). The constraints of the
  MLP \eqn{Ax = b} are adjusted accordingly. The \eqn{\theta}
  coefficient represents the value function (aka recourse function) of
  the sub-problems (second stage). 
}

\value{
  \code{"CLPD"} or \code{"CDEPD"}: The LP definition with the newly
  included \eqn{\theta} coefficient (updated slot \code{MP} in case of
  an \code{"CDEPD"}-object). 
}

\author{Bernhard Pfaff}

\keyword{methods}
