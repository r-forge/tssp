\name{gt2lt}
\docType{methods}
\alias{gt2lt}
\alias{gt2lt,CLPD-method}

\title{Method for converting greater-or-equal to lower-or-equal constraints}

\description{
  Additional arguments to the \code{gt2lt}-method pertinent to the
  defined S4-classes in this package are detailed below.
}

\usage{
\S4method{gt2lt}{CLPD}(object)  
}

\arguments{
  \item{object}{\code{CLPD}: an object of class \code{"CLPD"},
    ordinarily returned by a call to \code{LPD()}.}
}

\details{
  Greater-or-equal constraints are converted by multipliying the
  relevant row(s)/element(s) of the \code{A} matrix/\code{rhs} vector by
  \eqn{-1} and reverting the corresponding relational operators. 
}

\value{
  \code{CLPD}: Returns the definition of a LP with lower-or-equal and
  equality constraints (if applicable).
}

\author{Bernhard Pfaff}

\seealso{
  \code{\link{lt2gt}}, \code{\link{iq2eq}}
}

\examples{
example(LPD)
gt2lt(MLP)
}

\keyword{methods}
