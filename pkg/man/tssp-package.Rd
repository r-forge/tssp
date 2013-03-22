\name{tssp-package}
\alias{tssp-package}
\alias{tssp}
\docType{package}

\title{
  Two-Stage Stochastic Programs
}

\description{
  This package provides S4-classes and methods for defining,
  manipulation and solving two-stage linear programs with fixed
  recourse. 
}

\details{
\tabular{ll}{
Package: \tab tssp\cr
Type: \tab Package\cr
Version: \tab 0.1-1\cr
Date: \tab 2013-03-21\cr
License: \tab GPL (>= 2) \cr
Depends: \tab methods, Rglpk\cr
}

In this package S$-classes and methods for solving Two-Stage Stochastic
Programs are provided. These are currently confined to linear programs
(LP) with fixed recourse (henceforth: TSLP). \cr

TSLP have to be formulated in their \dQuote{Deterministic Equivalent
  Form} (DEP for short). This task can be accomplished by the two
  cornerstone functions \code{\link{LPD}} and \code{\link{DEP}}. The
  former can be used for formulating the master-problem (first stage LP)
  and the latter for providing the finite count of scenarios of the sub-problems
  (second stage LPs). \cr

A DEP is solved by means of the L-shaped algorithm. This algorithm consists
of adding feasability and/or optimality cuts to the master problem. The
algorithm is implemented as S4-method \code{\link{solveDEP}} for
objects of class \code{CDEPD}. This function returns an object of class
\code{CDEPS}. For obejcts of this formal class extractor methods for
retrieving certain elements of the TSLP solution are provided as well as
S4-methods for computing the EVPI and the VSS. \cr

Complete listings of the available methods for the defined classes are
provided in the man-pages \code{\linkS4class{CLPD}},
\code{\linkS4class{CLPS}}, \code{\linkS4class{CDEPD}} and
\code{\linkS4class{CDEPS}}. These classes are pertinent to the
definition of a LP, the solution of a LP, the definition of a DEP and
its solution, respectively. 
}

\author{
  Bernhard Pfaff <bernhard@pfaffikus.de>
}

\references{
Birge, J. R. and Louveaux, F., \emph{Introduction to Stochastic
  Programming}, Springer Series in Operations Research and Financial
Engineering, Second Edition, 2004, New York: Springer.
}

\keyword{package}

\seealso{
  \code{\link[Rglpk]{Rglpk_solve_LP}}
}
