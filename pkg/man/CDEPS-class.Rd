\name{CDEPS-class}
\Rdversion{1.1}
\docType{class}
\alias{CDEPS-class}
\alias{show,CDEPS-method}

\title{Class \code{"CDEPS"}}

\description{
  Class for the solution of a deterministic equivalent problem
}
\section{Objects from the Class}{
Objects can be created by calls of the form \code{new("CDEPS", ...)}, or
more conveniently by the method \code{solveDEP()}.
}

\section{Slots}{
  \describe{
    \item{\code{DEP}:}{\code{"CLPD"}: The definition of the DEP.}
    \item{\code{opt}:}{\code{"numeric"}: The value of the objective function.}
    \item{\code{par}:}{\code{"vector"}: The optimal parameters.}
    \item{\code{SubLPOpt}:}{\code{"vector"}: The optimal objective values of the sub-problems.}
    \item{\code{status}:}{\code{"integer"}: The status of the solver. A
      zero indicates convergence and a non-zero value non-convergence.}
  }
}

\section{Methods}{
  \describe{
    \item{dropCutsMP}{Dropping feasability and optimality cuts from
      master problem.}
    \item{EVPI}{Calculating the expected value of perfect information.}
    \item{getDecVar}{Retrieving the decision variables in the objective.}
    \item{getDep}{Retrieving the DEP after potential cuts have been to
      its master problem.}
    \item{getOpt}{Retrieving the optimal value of the objective.}
    \item{getPar}{Retrieving the optimal parameters of the objective.}
    \item{getStatus}{Retrieving the solver's status indicator.}
    \item{getSubLP}{Retrieving solutions of sub-problems.}
    \item{show}{Formatted representation of DEP solution.}
    \item{solveExpVal}{Solving a DEP for the expected value solution.}
    \item{solvePerfInf}{Solving a DEP under perfect information.}
    \item{VSS}{Value of stochastic solution.}
  }
}

\author{
  Bernhard Pfaff
}

\seealso{
\code{\link{solveDEP}}
}

\examples{
showClass("CDEPS")
}
\keyword{classes}
