\name{validDEP}
\alias{validDEP}

\title{
  Validation of \code{"CDEPD"} objects 
}

\description{
  Objects of class \code{"CDEPD"} are validated for concsistency of
  inputs; primarily checks with respect to the dimension of the inputs
  and the relational operators in the constraints are implemented.
}

\usage{
validDEP(object)
}

\arguments{
  \item{object}{An object of S$-class \code{"CDEPD"}.}
}

\value{
  The functions returns \code{TRUE} in case of a valid \code{"CDEPD"}
  object, otherwise an indicative error-message.
}

\author{
  Bernhard Pfaff
}

\seealso{
  \code{\linkS4class{CDEPD}}
}

\keyword{classes}
