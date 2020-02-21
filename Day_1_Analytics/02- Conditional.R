# session restart R - restart R session

f_k <- function(f_temp) {
  converted <- ((f_temp-32)) * (5/9) + 273.15
  return(converted)
}

f_c<- function(f_temp) {
  k_temp<- f_k(f_temp)
  temp_c<- k_c(k_temp)
  return(temp_c)
}

k_c <- function(k_temp) {
  if(k_temp < 0) {
    warning("You passed in a negative Kelvin number")
    return(NA)
  }
  return(k_temp - 273.15)
}

k_c(-9)

k_c <- function(k_temp) {
  if(is.na(k_temp)) {
    return(NA)
  } else if (k_temp < 0) {
    warning("You passed in a negative Kelvin number")
    return(NA)
  } else {
  return(k_temp - 273.15)
  }
}

k_c(NA)
k_c(1:10)

if (TRUE) {
  print("hello")
}

if( all(c(TRUE, TRUE, TRUE))) {
  print( "hello")
}

c(TRUE, FALSE) == c(TRUE, FALSE)
# dont use ==, use funciton like identical

identical(c(TRUE, FALSE), c(TRUE, FALSE))
identical(0,0L)

# write a funciton 
# takes a single value
# divisable by 3 : "fizz"
# divisable by 5 : "buzz"
# divisable by 3 & 5 : "fizzbuzz"

# %% 
# 10 %% 3 gives you one because 10/ 3 =9 with 1 leftover

fizzbuzz(6) # "fizz"

fizzbuzzp<- function(x) {
  if(x %% 3)
    return("fizz") {
      
    }
}
fizzbuzz(6)

fizz_buzz <- function(x){
  if(x%%3 == 0 & x%%5 == 0) {
    return("FizzBuzz")
  } else if(x%%3 == 0) {
    return("Fizz")
  } else if (x%%5 == 0){
    return("Buzz")
  } else {
    return(NA)
  }
}

fizz_buzz(15)
fizz_buzz(6)
fizz_buzz(10)
fizz_buzz(11)

fizz_buzz <- function(x){
  if(x%%3 == 0 & x%%5 == 0) {
    return("FizzBuzz")
  }
  else if(x%%3 == 0) {
    return("Fizz")
  }
  else if (x%%5 == 0){
    return("Buzz")
  } else {
    as.character(x)
  }
}

fizz_buzz(15)
fizz_buzz(6)
fizz_buzz(10)
fizz_buzz(11)

library(dplyr)

fizz_buzz_vec <- function(x){
  dplyr::case_when(
    (x %% 3) == 0 &(x %% 5) == 0 ~ "fizzbuzz",
    (x %% 3) == 0 ~ "fizz",
    (x %% 5) == 0 ~ "buzz",
    TRUE ~ as.character(x)
  )
}

fizz_buzz_vec(15)
fizz_buzz_vec(6)
fizz_buzz_vec(10)
fizz_buzz_vec(11)
fizz_buzz_vec(5:12)

my_exp <- x ~ 3 + 3
my_exp[[1]]
my_exp[[2]]

calc_op <- function (x, y, op) {
  switch(op,
         plus= x + y,
         minus= x - y ,
         times= x * y,
         divide= x / y,
         stop("Unknown op!")
  )
}

calc_op(10,100,"divide")

describe_temp<- function (temp) {
  if(temp <=0) {
    "freezing"
  } else if (temp <= 10) {
    "cold"
  } else if (temp <= 20) {
    "cool"
  } else if (temp <= 30) {
    "warm"
  } else {
    "hot"
  }
}

values<- 10

cut(values,
    c(-Inf, 0, 10, 20, 30, Inf),
    labels= c("freezing","cold","cool","warm","hot"), 
    right = TRUE)
