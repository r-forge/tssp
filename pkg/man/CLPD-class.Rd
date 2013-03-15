\name{CLPD-class}
\Rdversion{1.1}
\docType{class}
\alias{CLPD-class}
\alias{show,CLPD-method}

\title{Class \code{"CLPD"}}
\description{
  Class for the definition of a linear program
}
\section{Objects from the Class}{
Objects can be created by calls of the form \code{new("CLPD", ...)}, or
more conveniently by the generator function \code{LPD()}.

}
\section{Slots}{
  \describe{
    \item{\code{obj}:}{\code{"vector"}: The coefficients of the
      objective.}
    \item{\code{A}:}{\code{"matrix"}: The lhs-constraint matrix.}
    \item{\code{dir}:}{\code{"character"}: The relation-vector between
      the lhs-constraint matrix and the rhs-vector.}
    \item{\code{rhs}:}{\code{"vector"}: The values of the rhs-constraints.}
    \item{\code{bounds}:}{\code{"list"}: The lower and upper bounds of
      the variables in the LP.}
    \item{\code{max}:}{\code{"logical"}: Whether the objective should be
      maximized or minimized.}
  }
}

\section{Methods}{
  \describe{
    \item{addCon}{Adding constraints to a linear program.}
    \item{addTheta}{Amend master problem by \eqn{theta} coefficient
      (second stage optimisations).}
    \item{addVar}{Adding variables to a linear program.}
    \item{getA}{Retrieving coefficient matrix.}
    \item{getBounds}{Retrieving the specified variable bounds.}
    \item{getDir}{Retrieving the relational operators in the constraints.}
    \item{getMax}{Retrieving the direction of optimization as a logical value.}
    \item{getObj}{Retrieving coefficients of objective.}
    \item{gt2lt}{Converting greater-or-equal to lower-or-equal constraints.}
    \item{iq2eq}{Converting inequality to equality constraints.}
    \item{lt2gt}{Converting lower-or-equal to greater-or-equal
      constraints.}
    \item{Primal2Dual}{Converting a primal LP into its dual-form.}
    \item{show}{Formatted representation of LP.}
    \item{solveLPD}{Solving a LP by calling \code{Rglpk_solve_LP()}.}
  }
}

\author{
  Bernhard Pfaff
}

\seealso{
\code{\link{LPD}}, \code{\link{validLPD}}
}

\examples{
showClass("CLPD")
}

\keyword{classes}
