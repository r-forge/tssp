## addCon: Adding constraints to LP
setGeneric("addCon", function(object, ...) standardGeneric("addCon"))
## addVar: Adding variables to LP
setGeneric("addVar", function(object, ...) standardGeneric("addVar"))
## addVar: Adding theta to master problem
setGeneric("addTheta", function(object) standardGeneric("addTheta"))
## checkAddFeasCut: Tests and adds a feasability cut to the master-problem
setGeneric("checkAddFeasCut", function(object, ...) standardGeneric("checkAddFeasCut"))
## checkAddOptCut: Tests and adds an optimality cut to the master-problem
setGeneric("checkAddOptCut", function(object, ...) standardGeneric("checkAddOptCut"))
## createRhsSubLP: Evaluates rhs-constraints of sub-problems
setGeneric("createRhsSubLP", function(object, ...) standardGeneric("createRhsSubLP"))
## createSubLP: Creating a list object containing the sub-problems
setGeneric("createSubLP", function(object, ...) standardGeneric("createSubLP"))
## dropCutsMP: Removing feasability and optimality cuts from MP
setGeneric("dropCutsMP", function(object) standardGeneric("dropCutsMP"))
## EVPI: Expected value of perfect information
setGeneric("EVPI", function(object, ...) standardGeneric("EVPI"))
## getA: Retrieving coefficient matrix of LP
setGeneric("getA", function(object) standardGeneric("getA"))
## getBounds: Retrieving variable bounds of LP
setGeneric("getBounds", function(object, ...) standardGeneric("getBounds"))
## getDecVar: Retrieving the decision variables in objective
setGeneric("getDecVar", function(object) standardGeneric("getDecVar"))
## getDep: Retrieving DEP definition after potential cuts have been added to master problem
setGeneric("getDep", function(object) standardGeneric("getDep"))
## getDir: Retrieving the relational operators of the constraints
setGeneric("getDir", function(object) standardGeneric("getDir"))
## getH: Retrieving absolute terms in rhs-constraints of second-stage
setGeneric("getH", function(object) standardGeneric("getH"))
## getK: Retrieving the count of scenarios
setGeneric("getK", function(object) standardGeneric("getK"))
## getMax: Retrieving the direction of optimization
setGeneric("getMax", function(object) standardGeneric("getMax"))
## getMP: Retrieving the definition of the master problem
setGeneric("getMP", function(object) standardGeneric("getMP"))
## getObj: Retrieving the coefficients of objective function
setGeneric("getObj", function(object) standardGeneric("getObj"))
## getOpt: Retrieving the optimal value of the objective
setGeneric("getOpt", function(object) standardGeneric("getOpt"))
## getPar: Retrieving the optimal parameters
setGeneric("getPar", function(object) standardGeneric("getPar"))
## getProb: Retrieving probabilities of scenarios
setGeneric("getProb", function(object) standardGeneric("getProb"))
## getQ: Retrieving the coefficients of the second-stage objectives
setGeneric("getQ", function(object) standardGeneric("getQ"))
## getRhs: Retrieving vector of rhs constraints
setGeneric("getRhs", function(object) standardGeneric("getRhs"))
## getStatus: Retrieving the solver's status
setGeneric("getStatus", function(object) standardGeneric("getStatus"))
## getSubLP: Retrieving solutions of sub-problems
setGeneric("getSubLP", function(object) standardGeneric("getSubLP"))
## getTech: Retrieving list of technology matrices
setGeneric("getTech", function(object) standardGeneric("getTech"))
## getW: Retrieving the recourse matrix
setGeneric("getW", function(object) standardGeneric("getW"))
## gt2lt: Converting greater-or-equal to lower-or-equal constraints
setGeneric("gt2lt", function(object) standardGeneric("gt2lt"))
## iq2eq: Converting unequality to equality constraints
setGeneric("iq2eq", function(object) standardGeneric("iq2eq"))
## lt2gt: Converting lower-or-equal to greater-or-equal constraints
setGeneric("lt2gt", function(object) standardGeneric("lt2gt"))
## Primal2Dual: Converting primal LP to its dual representation
setGeneric("Primal2Dual", function(object) standardGeneric("Primal2Dual"))
## solveDEP: Solving a DEP by L-shaped method
setGeneric("solveDEP", function(object, ...) standardGeneric("solveDEP"))
## solveLPD: Solving a LP by invoking Rglpk
setGeneric("solveLPD", function(object, ...) standardGeneric("solveLPD"))
## solvePerfInf: Solving under perfect information
setGeneric("solvePerfInf", function(object, ...) standardGeneric("solvePerfInf"))
## solveExpVal: Solving for the expected value solution
setGeneric("solveExpVal", function(object, ...) standardGeneric("solveExpVal"))
## VSS: Value of stochastic solution
setGeneric("VSS", function(object, ...) standardGeneric("VSS"))
