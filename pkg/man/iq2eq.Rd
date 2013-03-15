\name{iq2eq}
\docType{methods}
\alias{iq2eq}
\alias{iq2eq,CLPD-method}

\title{Method for converting inequality to equality constraints}

\description{
  Additional arguments to the \code{iq2eq}-method pertinent to the
  defined S4-classes in this package are detailed below.
}

\usage{
\S4method{iq2eq}{CLPD}(object)  
}

\arguments{
  \item{object}{\code{CLPD}: an object of class \code{"CLPD"},
    ordinarily returned by a call to \code{LPD()}.}
}

\details{
  Inequality constraints are converted to equality constraints by
  introducing slack variables. These are named \code{Sfoo}, whereby
  \code{foo} is an integer.
}

\value{
  \code{CLPD}: Returns the definition of a LP with equality constraints.
}

\author{Bernhard Pfaff}

\seealso{
  \code{\link{lt2gt}}, \code{\link{gt2lt}}
}

\examples{
example(LPD)
iq2eq(MLP)
}

\keyword{methods}
