\name{CLPS-class}
\Rdversion{1.1}
\docType{class}
\alias{CLPS-class}
\alias{show,CLPS-method}

\title{Class \code{"CLPS"}}
\description{
  Class for the solution of a linear program
}
\section{Objects from the Class}{
Objects can be created by calls of the form \code{new("CLPS", ...)}, or
more conveniently by the method \code{solveLPD()}.
}

\section{Slots}{
  \describe{
    \item{\code{LP}:}{\code{"CLPD"}: The definition of the LP.}
    \item{\code{opt}:}{\code{"numeric"}: The value of the objective function.}
    \item{\code{par}:}{\code{"vector"}: The optimal parameters.}
    \item{\code{status}:}{\code{"integer"}: The status of the solver. A
      zero indicates convergence and a non-zero value non-convergence.}
  }
}

\section{Methods}{
  \describe{
    \item{getA}{Retrieving coefficient matrix.}
    \item{getBounds}{Retrieving the specified variable bounds.}
    \item{getDecVar}{Retrieving the decision variables in the objective.}
    \item{getDir}{Retrieving the relational operators in the constraints.}
    \item{getMax}{Retrieving the direction of optimization as a logical value.}
    \item{getObj}{Retrieving coefficients of objective.}
    \item{getOpt}{Retrieving the optimal value of the objective.}
    \item{getPar}{Retrieving the optimal parameters of the objective.}
    \item{getStatus}{Retrieving the solver's status indicator.}
  }
}

\author{
  Bernhard Pfaff
}

\seealso{
\code{\link{solveLPD}}
}

\examples{
showClass("CLPS")
}
\keyword{classes}
