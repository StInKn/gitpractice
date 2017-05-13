#' Conversion function
#' 
#' This function converts values from one unit (inch, cm, pounds or kg) to another unit.
#' 
#' @param value The value to be converted.
#' @param from Unit of given value.
#' @param to Unit in which value will be converted.
#' @param r Number of decimals
#' @author Kafi
#' @export 


UnitConv <- function(value, from = c("inch", "cm", "pounds", "kg"), to = c("inch", "pounds", "cm", "kg"), r = 2){
#from and to identical
  if (from == to){
    result <- value
  
#Height
  #From Inch to...
  } else if (from == "inch"){
    
    #to cm
    if (to == "cm"){
      result <- round(value*2.54, r)
    }
  
  #From Cm to... 
  } else if (from == "cm") {
    
    #to inch
    if (to == "inch"){
      result <- round(value/2.54, r)
    }
    
#Weight
  #From pounds to...
  } else if (from == "pounds"){
    
    #to kg
    if (to == "kg"){
      result <- round(value*.453592, r)
    }
    
  #From kg to...
  } else if (from == "kg"){
    
    #to pounds
    if (to == "pounds"){
      result <- round(value/.453592, r)
    }
  }
  
  return(result)
}
