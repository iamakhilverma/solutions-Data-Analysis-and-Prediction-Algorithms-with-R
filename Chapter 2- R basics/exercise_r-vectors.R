# Problem 1 --------------------------
temp <- c('Beijing' = 35, 'Lagos' = 88, 'Paris' = 42, "Rio de Janeiro" = 84, 'San Juan' = 81, 'Toronto' = 30 )
# Problem 2 --------------------------
city <- c('Beijing', 'Lagos', 'Paris', 'Rio de Janeiro', 'San Juan', 'Toronto')
# Problem 3 --------------------------

# Problem 4 --------------------------
# temp[c(city[1:3])]
temp[1:3]
# Problem 5 --------------------------
# temp[c("Paris", "San Juan")]
temp[c(3, 5)]
# Problem 6 --------------------------
num_seq <- 12:73
# Problem 7 --------------------------
odd_less_than_100 <- seq(1, 100, 2)
# Problem 8 --------------------------
vec_num <- seq(6, 55, 4 / 7)
# Problem 9 --------------------------
a <- seq(1, 10, 0.5)
# Here a is of numeric class
class(a)
# Problem 10 --------------------------
a <- seq(1, 10)
# Here a is of integer class
class(a)
# Problem 11 --------------------------
class(a <- 1)
class(a <- 1L)
# Problem 12 --------------------------
x <- c("1", "3", "5")
class(x)
x <- as.integer(x)
class(x)