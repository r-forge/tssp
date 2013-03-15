\name{addCon}
\docType{methods}
\alias{addCon}
\alias{addCon,CLPD-method}

\title{Method for adding constraints to a linear program}

\description{
  Additional arguments to the \code{addCon}-method pertinent to the
  defined S4-classes in this package are detailed below.
}

\usage{
\S4method{addCon}{CLPD}(object, A, dir, rhs)  
}

\arguments{
  \item{object}{\code{CLPD}: an object of class \code{"CLPD"}, ordinarily returned by a call to \code{LPD()}.}  
  \item{A}{\code{matrix}: The row(s) to be added to the constraint matrix.}
  \item{dir}{\code{vector}: The character vector of the relational operators \code{'<=', '==', '>='}.}
  \item{rhs}{\code{vector}: The corresponding rhs-values. The length of this vector must be identical to the row dimension of \code{A}.} 
}

\value{
  \code{"CLPD"}: The LP definition with the newly included constraints.
}


\author{Bernhard Pfaff}

\keyword{methods}
