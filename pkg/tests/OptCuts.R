library(tssp)
##
## Example for optimality cuts
##
obj <- c(100, 150)
A <- matrix(c(1, 1,
              1, 0,
              0, 1),
            ncol = 2, nrow = 3, byrow = TRUE)
dir <- c("<=", ">=", ">=")
rhs <- c(120, 40, 20)
MLP <- LPD(obj, A, dir, rhs)
## Defining vectors and matrices for second stage
W <- matrix(c(6, 10,
              8, 5,
              1, 0,
              0, 1),
            ncol = 2, byrow = TRUE)
Tech <- matrix(c(-60, 0,
               0, -80,
               0, 0,
               0, 0),
             ncol = 2, byrow = TRUE)
## scenario 1
ss1obj <- c(-24, -28)
h1 <- c(0, 0, 500, 100)
## scenario 2
ss2obj <- c(-28, -32)
h2 <- c(0, 0, 300, 300)
## probabilities
p <- c(0.4, 0.6)
## combining objective and absolute rhs values
q <- rbind(ss1obj, ss2obj)
h <- rbind(h1, h2)
## Creating DEP object
object <- DEP(MP = MLP, q = q, W = W, h = h, Tech = Tech, prob = p)
object
OptCuts <- solveDEP(object)
getDep(OptCuts)
