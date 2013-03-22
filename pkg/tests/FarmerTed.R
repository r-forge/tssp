library(tssp)
## Formulating LP (single-stage)
lpobj <- c(150, 230, 260, 238, -170, 210, -150, -36, -10)
names(lpobj) <- c("x1", "x2", "x3", "y1", "w1", "y2", "w2", "w3", "w4")
lpA <- matrix(c(1, 1, 1, 0, 0, 0, 0, 0, 0, 
                2.5, 0, 0, 1, -1, 0, 0, 0, 0,
                0, 3, 0, 0, 0, 1, - 1, 0, 0,
                0, 0, 20, 0, 0, 0, 0, -1, -1,
                0, 0, 0, 0, 0, 0, 0, 1, 0),
              nrow = 5, ncol = 9, byrow = TRUE)
colnames(lpA) <- names(lpobj)
rownames(lpA) <- paste("R", 1:5, sep = "")
lpdir <- c("<=", ">=", ">=", ">=", "<=")
lprhs <- c(500, 200, 240, 0, 6000)
names(lprhs) <- rownames(lpA)
LP <- LPD(lpobj, lpA, lpdir, lprhs)
LPS <- solveLPD(LP)
LPS
##
## Now, formulating as Two-Stage Problem (DEP)
##
## Objective in master-problem
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
lp2s <- DEP(MP, q, W, h, Tech, SubDir = ssdir)
tslp <- solveDEP(lp2s, max.iter = 30)
tslp
## VSS
VSS(tslp)
## EVPI
EVPI(tslp)
