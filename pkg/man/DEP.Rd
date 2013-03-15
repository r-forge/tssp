\name{DEP}

\alias{DEP}

\title{
  Deterministic Equivalent Problem of Two-Stage SP
}

\description{
  This function creates an object of class \code{"CDEPD"}, by which the
  deterministic equivalent problem is defined.
}

\usage{
DEP(MP, q, W, h, Tech, SubDir = NULL, prob = NULL)
}

\arguments{
  \item{MP}{\code{CLPD}: The master (first-stage) problem, ordinarily
  created by a call to \code{LPD()}.}
  \item{q}{\code{vector} or \code{matrix}: The objective(s) in the
      second-stage (per row for each scenario).}
  \item{W}{\code{matrix}: The recourse-matrix.}
  \item{h}{\code{vector} or \code{matrix}: The absolute values of the
      rhs-constraints (per row for each scenario).}
  \item{Tech}{\code{matrix} or \code{list}: The technology matrices combined
      in a \code{list} object, or simply a \code{matrix} if fixed for
  all scenarios.}
  \item{SubDir}{\code{character}: The relational operators
      to be used in the second stage. Allowed are \code{"<="},
  \code{"=="} or \code{">="}.} 
  \item{prob}{\code{vector}: The probability for each
      scenario. If left \code{NULL}, all scenarios obtain the same
  probability.}
}

\details{
  The master and the sub-problems must be specified as LP to be minimized. 
}

\value{
  An object of S4-class \code{"CDEPD"}.
}

\author{
  Bernhard Pfaff
}

\references{
Birge, J. R. and Louveaux, F., \emph{Introduction to Stochastic
  Programming}, Springer Series in Operations Research and Financial
Engineering, Second Edition, 2004, New York: Springer.
}

\seealso{
  \code{\linkS4class{CDEPD}}
}

\examples{
##
## Birge & Louveaux
## Chapter 1, Section 1, The farmer's problem
##
## Formulating as two-stage problem
##
mpobj <- c(150, 230, 260)
names(mpobj) <- c("x1", "x2", "x3")
## Constraints in master problem
mpA <- matrix(c(1, 1, 1),
              nrow = 1, ncol = 3, byrow = TRUE)
colnames(mpA) <- names(mpobj)
rownames(mpA) <- "R1"
## direction in master problem
mpdir <- "<="
## rhs in master problem
mprhs <- c(500)
## Formulating first-stage problem
MP <- LPD(mpobj, mpA, mpdir, mprhs)
## Formulation of second stage problems
## objective is the same for the three scenarios
q <- c(170, -238, 150, -210, 36, 10)
q <- -1.0 * q
names(q) <- c("w1", "y1", "w2", "y2", "w3", "w4")
## recourse matrix
W <- matrix(c(-1, 1, 0, 0, 0, 0,
              0, 0, -1, 1, 0, 0,
              0, 0, 0, 0, 1, 1,
              0, 0, 0, 0, 1, 0),
            nrow = 4, ncol = 6, byrow = TRUE)
colnames(W) <- names(q)
rownames(W) <- paste("SSR", 1:4, sep = "")
## technology matrixes for the three scenarios
## reflecting the bad, average and good crop yields
## Scenario 1
T1 <- matrix(c(3, 0, 0,
               0, 3.6, 0,
               0, 0, -24,
               0, 0, 0),
             nrow = 4, ncol = 3, byrow = TRUE)
colnames(T1) <- names(mpobj)
rownames(T1) <- rownames(W)
## Scenario 2
T2 <- matrix(c(2.5, 0, 0,
               0, 3, 0,
               0, 0, -20,
               0, 0, 0),
             nrow = 4, ncol = 3, byrow = TRUE)
colnames(T2) <- names(mpobj)
rownames(T2) <- rownames(W)
## Scenario 3
T3 <- matrix(c(2, 0, 0,
               0, 2.4, 0,
               0, 0, -16,
               0, 0, 0),
             nrow = 4, ncol = 3, byrow = TRUE)
colnames(T3) <- names(mpobj)
rownames(T3) <- rownames(W)
Tech <- list(T1, T2, T3)
## affine terms on rhs, same in the three scenarios
h <- c(200, 240, 0, 6000)
names(h) <- rownames(W)
ssdir <- c(">=", ">=", "<=", "<=")
## Defining DEP
DEP <- DEP(MP, q, W, h, Tech, SubDir = ssdir)
DEP
}

\keyword{algebra}
