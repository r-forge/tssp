\name{lt2gt}
\docType{methods}
\alias{lt2gt}
\alias{lt2gt,CLPD-method}

\title{Method for converting lower-or-equal to greater-or-equal constraints}

\description{
  Additional arguments to the \code{lt2gt}-method pertinent to the
  defined S4-classes in this package are detailed below.
}

\usage{
\S4method{lt2gt}{CLPD}(object)  
}

\arguments{
  \item{object}{\code{CLPD}: an object of class \code{"CLPD"},
    ordinarily returned by a call to \code{LPD()}.}
}

\details{
  Lower-or-equal constraints are converted by multipliying the
  relevant row(s)/element(s) of the \code{A} matrix/\code{rhs} vector by
  \eqn{-1} and reverting the corresponding relational operators. 
}

\value{
  \code{CLPD}: Returns the definition of a LP with greater-or-equal and
  equality constraints (if applicable).
}

\author{Bernhard Pfaff}

\seealso{
  \code{\link{gt2lt}}, \code{\link{iq2eq}}
}

\examples{
example(LPD)
lt2gt(MLP)
}

\keyword{methods}
