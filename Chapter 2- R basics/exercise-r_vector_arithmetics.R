# Load the packages --------------------------
library(dslabs)
# Load the data --------------------------
data("murders")
# Problem 1 --------------------------
temp <- c(35, 88, 42, 84, 81, 30)
city <- c("Beijing", "Lagos", "Paris", "Rio de Janeiro", "San Juan", "Toronto")
city_temps <- data.frame(name = city, temperature = temp)
temp <- (5 / 9) * (temp - 32)
city_temps <- data.frame(name = city, temperature = temp)
# Problem 2 --------------------------
# nums <- 1:100
# nums_inverse <- 1 / nums
# nums_inverse <- nums_inverse^2
# print(sum_of_given_seq <- sum(nums_inverse))
print(sum(1 / nums^2))
# Problem 3 --------------------------
murder_rate <- murders$total / (murders$population / 100000)
mean(murder_rate)
