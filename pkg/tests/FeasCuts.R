library(tssp)
##
## Example for feasability cuts
## (Example 4.2 in Birge)
##
## Master problem
obj <- c(3, 2)
A <- diag(2)
dir <- c(">=", ">=")
rhs <- c(0, 0)
MP <- LPD(obj, A, dir, rhs)
MPsF <- iq2eq(MP)
## Sub-problems (using slack variables)
q <- c(-15, -12)
W <- matrix(c(3, 2,
              2, 5,
              1, 0,
              0, 1,
              1, 0,
              0, 1),
            nrow = 6, ncol = 2, byrow = TRUE)
Tech <- matrix(c(-1, 0,
                 0, -1,
                 0, 0,
                 0, 0,
                 0, 0,
                 0, 0),
               nrow = 6, ncol = 2, byrow = TRUE)
h1 <- c(0, 0, 0.8 * 4, 0.8 * 4, 4, 4)
h2 <- c(0, 0, 0.8 * 4, 0.8 * 8, 4, 8)
h3 <- c(0, 0, 0.8 * 6, 0.8 * 4, 6, 4)
h4 <- c(0, 0, 0.8 * 6, 0.8 * 8, 6, 8)
H <- rbind(h1, h2, h3, h4)
SubDir <- c("<=", "<=", ">=", ">=", "<=", "<=")
object <- DEP(MP = MPsF, q = q, W = W, h = H, SubDir = SubDir, Tech = Tech)
FeasCuts <- solveDEP(object)
FeasCuts
getDep(FeasCuts)
