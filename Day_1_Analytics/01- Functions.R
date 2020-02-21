library(tidyverse)
# Farenheit to Kelvin
# K = ((f-32)) * (5/9) + 273.15

((32-32))* (5/9) +273.15

f_k <- function(f_temp) {
  converted <- ((f_temp-32)) * (5/9) + 273.15
  return(converted)
}

f_k(43)

install.packages("testthat")

library(testthat)

expect_equal(f_k(32), 273.15)
# way to check if your values are what you expact

# Kelvin to Celsius

k_c <- function(k_temp) {
  return(k_temp - 273.15)
}

k_c(0)

f_c<- function(f_temp) {
  k_temp<- f_k(f_temp)
  temp_c<- k_c(k_temp)
  return(temp_c)
}

# mean_wt
# funciton 2 vectors
# vector, x, values
# vector, w, weights
# sum(x*w) / sum(w)
# f(1:6, 1:6)

mean_wt <- function(x,w) {
  if (length(x)!= length(w)){
    stop("x and w should be the same length")
  }
  return(sum(x*w) / sum(w))
}

mean_wt(1:6,1:3)

mean_wt(1:6,1:6)

testthat:: expect_error(mean_wt(1:6,1:3))

sum_3 <- function(x,y, ..., z) {
  return(x+y+z)
}

sum_3(1,2, z = 3)


