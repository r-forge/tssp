##
## getPar Method for objects of class "CLPS"
##
setMethod(f = "getPar", signature(object = "CLPS"), definition = function(object){
  ans <- slot(object, "par")
  return(ans)
})
##
## getPar Method for objects of class "CDEPS"
##
setMethod(f = "getPar", signature(object = "CDEPS"), definition = function(object){
  ans <- slot(object, "par")
  return(ans)
})

