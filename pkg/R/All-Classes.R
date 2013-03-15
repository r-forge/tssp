##
## Validity function for objects of class 'CLPD'
##
validLPD <- function(object){
  if(!(nrow(object@A) == length(object@rhs))){
    return("\nRow dimension of constraint matrix 'A'\n is not equal to length of rhs constraint vector 'b'.\n")
  }
  if(!(nrow(object@A) == length(object@dir))){
    return("\nRow dimension of constraint matrix 'A' \n is not equal to length of relation vector 'dir'.\n")
  } 
  if(!(ncol(object@A) == length(object@obj))){
    return("\nColumn dimension of constraint matrix 'A'\n is not equal to length of coefficient in the objective 'obj'.\n")
  }
  if(!(all(object@dir %in% c("<=", "==", ">=")))){
    return("\nOnly '<=', '==' and '>=' are allowed as relational operators in 'dir'.\n")
  }
  return(TRUE)
}
##
## Class definition 'CLPD'
##
setClass("CLPD", representation(
                   obj = "vector",
                   A = "matrix",
                   dir = "character",
                   rhs = "vector",
                   bounds = "list",
                   max = "logical"),
         validity = validLPD)
##
## Class definition 'CLPS'
##
setClass("CLPS", representation(
                   LP = "CLPD",
                   opt = "numeric",
                   par = "vector",
                   status = "integer"),
         contains = "CLPD"
         )
##
## Validity function for objects of class 'CLPS'
##
validDEP <- function(object){
  if(!all(getDir(object@MP) == "==")){
    return("\nMaster LP must specified with equality constraints only.\n")
  }
  return(TRUE)
}
##
## Class definition 'CDEPD'
##
setClass("CDEPD", representation(
                   MP = "CLPD",
                   q = "matrix",
                   W = "matrix",
                   h = "matrix",
                   Tech = "list",
                   SubDir = "character",
                   prob = "vector",
                   K = "integer"),
         validity = validDEP,
         contains = "CLPD")
##
## Class definition 'CDEPS'
##
setClass("CDEPS", representation(
                   DEP = "CDEPD",
                   opt = "numeric",
                   par = "vector",
                   SubLPOpt = "vector",
                   status = "integer"),
         contains = "CDEPD")
