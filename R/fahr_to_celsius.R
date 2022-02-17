airtemps <- c(212, 20.2, 78, 32)

#R Script better than rMarkdown for xxx. Can be "sourced"
#use Ctrl + Enter to run each line

celsius1 <- (airtemps[1]-32)*5/9
celsius2 <- (airtemps[2]-32)*5/9
celsius3 <- (airtemps[3]-32)*5/9

#don't write repeating code. write a function instead
#function will not pass a data frame, a string, etc. It's excpecting a vector or scalar variable

fahr_to_celsius <- function(fahr){ 
  celsius <- (fahr - 32)*5/9
  return(celsius)
}
  
#need to Run the function in order to load it into library and environment

#test it
celsius4 <- fahr_to_celsius(airtemps[1])

#should return TRUE
celsius1 == celsius4

airtemps_c <-  fahr_to_celsius(fahr = airtemps) #explicit call

#same as

airtemps_c <-  fahr_to_celsius(airtemps) #implicit call

#Documenting Functions:
#From CODE menu, insert Roxygen Skeleton. Note cursor needs to be in the name of a function or highlight the whole function
#' Title
#'
#' @param celsius 
#'
#' @return
#' @export
#'
#' @examples

celsius_to_fahr <- function(celsius){
  fahr <-  (celsius*9/5 + 32)
  return(fahr)
}

airtemps_f <- celsius_to_fahr(airtemps_c)

#test it
fahr4 <- celsius_to_fahr(airtemps_c[1])

#Make a more robust function
convert_temps <-  function(fahr){
  celsius <- (fahr - 32)*5/9
  kelvin <-  celsius + 273.15
  return(list(fahr = fahr, celsius = celsius, kelvin = kelvin))
}

convert_temps(airtemps)

#list values are just naming the columns
#could create a data frame instead