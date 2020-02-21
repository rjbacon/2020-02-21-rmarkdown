f_values<-c(0, 32, 212, -40)

f_values * 10

f_values * c(10, 100)

f_k <- function(f_temp) {
  converted <- ((f_temp-32)) * (5/9) + 273.15
  return(converted)
}

f_values * c(10, 100)

for (x in f_values) {
  print(x * 10)
}

for (x in f_values) {
  print(f_k(x * 10))
}

library(purrr)

converted<- purrr::map(f_values, f_k)
converted

class(converted)

purrr::map_dbl(f_values, f_k)

mtcars

purrr::map(mtcars, class)
purrr::map(mtcars, summary)

# apply,lapply, saaply, vapply

lapply(mtcars, f_c)

purrr::map_dbl(mtcars, mean)

sapply(mtcars, mean)

vapply(mtcars, mean, numeric(1))

#1. Compute the mean for every column in mtcars
#2. Determine the number of each column in nycflights13::flights
#3. Compute the unique values in each column of iris
#4. Generate 10 random normals from distributions with means of -10, 0, 10, and 100

#1.
purrr::map_dbl(mtcars, mean)

#2.
library(nycflights13)
purrr::map(flights, class)

# purrr::map_chr will give you a character

#3.
purrr::map(iris, summary)

num_unique <- function (x) {
  return(length(unique(x)))
}

purrr::map_dbl(iris, num_unique)
purrr::map_dbl(iris, ~ length(unique(.)))

#4.
purrr::map(c(-10, 0, 10, 100), ~ rnorm( n = 10, mean = .))
# ~ equals function(x) {}
purrr::map(c(-10, 0, 10, 100), function(x) {rnorm(n=10, mean= x)})

safe_log <- safely(log)
log(10)
safe_log(10)
safe_log("a")

x <- list(1, 10, "a")
y <- x %>% 
  map(safe_log)

x %>% 
  map(log)

y

flipped_results <- y %>%
  transpose()

flipped_results

flipped_results$result

mu <- list(5, 10, -3)

map(mu, rnorm, n = 5)

sigma <- list(1, 5, 10)

map2(mu, sigma, rnorm, n=5)

n <- list(1, 3, 5)

args<- list(mean= mu, sd= sigma, n= n)

pmap(args, rnorm)
# 1 draw of mean= 5 sd=1, 3 draws of mean= 10 sd=5,...
