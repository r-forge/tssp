##
## getDep Method for objects of class "CDEPS"
##
setMethod(f = "getDep", signature(object = "CDEPS"), definition = function(object){
  ans <- slot(object, "DEP")
  return(ans)
})
