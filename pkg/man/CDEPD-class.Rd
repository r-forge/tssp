\name{CDEPD-class}
\Rdversion{1.1}
\docType{class}
\alias{CDEPD-class}
\alias{show,CDEPD-method}

\title{Class \code{"CDEPD"}}
\description{
  Class for the definition of the Deterministic Equivalent Problem
}
\section{Objects from the Class}{
Objects can be created by calls of the form \code{new("CDEPD", ...)}, or
more conveniently by the generator function \code{DEP()}.

}
\section{Slots}{
  \describe{
    \item{\code{MP}:}{\code{"CLPD"}: The master or first-stage LP.}
    \item{\code{q}:}{\code{"matrix"}: The objective(s) in the
      second-stage (per row for each scenario).}
    \item{\code{W}:}{\code{"matrix"}: The recourse-matrix.}
    \item{\code{h}:}{\code{"matrix"}: The absolute values of the
      rhs-constraints (per row for each scenario).}
    \item{\code{Tech}:}{\code{"list"}: The technology matrices combined
      in a \code{list} object.}
    \item{\code{SubDir}:}{\code{"character"}: The relational operators
      to be used in the second stage.}
    \item{\code{prob}:}{\code{"vector"}: The probability for each
      scenario.}
    \item{\code{K}:}{\code{"integer"}: The count of scenarios.}
  }
}

\section{Methods}{
  \describe{
    \item{addTheta}{Including the value function in the objective of the
      master problem.}
    \item{checkAddFeasCut}{Tests and adds a feasability cut to the
      master-problem.}
    \item{checkAddOptCut}{Tests and adds an optimality cut to the
      master-problem.}
    \item{createRhsSubLP}{Evaluates rhs-constraints of sub-problems.}
    \item{createSubLP}{Creates list of sub-problems for a given
      \eqn{\mathbf{x}}.}
    \item{getA}{Retrieving coefficient matrix.}
    \item{getBounds}{Retrieving the specified variable bounds.}
    \item{getDir}{Retrieving the relational operators in the constraints.}
    \item{getH}{Retrieving absolute terms of rhs-constraints in
      second-stage LP.}
    \item{getK}{Retrieving the count of scenarios.}
    \item{getMax}{Retrieving the direction of optimization as a logical value.}
    \item{getMP}{Retrieving the definition of the master problem.}
    \item{getObj}{Retrieving coefficients of objective.}
    \item{getProb}{Retrieving probabilities for scenarios.}
    \item{getQ}{Retrieving the second-stage coefficients of the objective.}
    \item{getTech}{Retrieving the \code{list}-object of technology-matrices.}
    \item{getW}{Retrieving the (fixed) recourse-matrix.}
    \item{show}{Formatted representation of DEP.}
    \item{solveDEP}{Solving a deterministic equivalent problem formulation.}
    \item{solveExpVal}{Solving a DEP for the expected value solution.}
    \item{solvePerfInf}{Solving a DEP under perfect information.}
  }
}

\author{
  Bernhard Pfaff
}

\seealso{
\code{\link{DEP}}, \code{\link{validDEP}}
}

\examples{
showClass("CDEPD")
}

\keyword{classes}
