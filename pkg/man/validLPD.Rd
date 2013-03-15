\name{validLPD}
\alias{validLPD}

\title{
  Validation of \code{"CLPD"} objects 
}

\description{
  Objects of class \code{"CLPD"} are validated for concsistency of
  inputs; primarily checks with respect to the dimension of the inputs
  are implemented.
}

\usage{
validLPD(object)
}

\arguments{
  \item{object}{An object of S$-class \code{"CLPD"}.}
}

\value{
  The functions returns \code{TRUE} in case of a valid \code{"CLPD"}
  object, otherwise an indicative error-message.
}

\author{
  Bernhard Pfaff
}

\seealso{
  \code{\linkS4class{CLPD}}
}

\keyword{classes}
