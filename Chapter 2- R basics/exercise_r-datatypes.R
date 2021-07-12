# Load the packages --------------------------
library(dslabs)
# Load the data --------------------------
data("murders")
# Problem 1 --------------------------
str(murders)
# The answer is c. state name- characters, abbreviation of the state name- characters, state's region- factors, state's population- numeric, total number of murders for 2010- numeric
# Problem 2 --------------------------
column_names <- names(murders)
# Problem 3 --------------------------
a <- murders$abb
class(a)
# Problem 4 --------------------------
b <- murders[["abb"]]
identical(a, b)
# Yes, a and b are identical
# Problem 5 --------------------------
length(levels(murders$region))
# Problem 6 --------------------------
states_per_region <- table(murders$region)
sum(states_per_region)