# Load the packages --------------------------
library(dslabs)
# Load the data --------------------------
data("murders")
# Problem 1 --------------------------
x <- c(1, 2, -3, 4)

if (all(x > 0)) {
  print("All positives")
} else {
  print("Not all positives")
}
# Problem 2 --------------------------
# all(!x) will be always FALSE when at least one entry of a logical vector x is TRUE
# Problem 3 --------------------------
new_names <- ifelse(nchar(murders$state) > 8, murders$abb, murders$state)
# Problem 4 --------------------------
sum_n <- function(n) {
  sum(1:n)
}
sum_n(5000)
identical(sum_n(5000), sum(1:5000))
# Problem 5 --------------------------
# y <- c(4, 2, -3, 1)
altman_plot <- function(x, y) {
  plot(x + y, y - x)
}
# Problem 6 --------------------------
x <- 3
my_func <- function(y) {
  x <- 5
  y + 5
}
# x is still 3 as it was defined in the global environment and the definition of x to 5 was in functional scope
# Problem 7 --------------------------
compute_s_n <- function(n) {
  sum((1:n)^2)
}
compute_s_n(10)
# Problem 8 --------------------------
s_n <- vector("numeric", 25)
for (i in 1:25) {
  s_n[i] <- compute_s_n(i)
}
# Problem 9 --------------------------
s_n <- sapply(1:25, compute_s_n)
# Problem 10 --------------------------
s_n <- map_dbl(1:25, compute_s_n)
# Problem 11 --------------------------
n <- 1:25
plot(n, s_n)
# Problem 12 --------------------------
all(identical(s_n[n], (n * (n + 1) * (2 * n + 1)) / 6))
# identical(s_n[n], (n * (n + 1) * (2 * n + 1)) / 6)
# Both statements above yield the same result and confirm the given formula
