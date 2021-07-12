# Load the packages --------------------------
library(dslabs)
# Load the data --------------------------
data("murders")
# Problem 1 --------------------------
pop <- murders$population
pop <- sort(pop)
min_pop <- pop[1]
# Problem 2 --------------------------
pop <- murders$population
index_sorted_pop <- order(pop)
index_min_pop <- index_sorted_pop[1]
# Problem 3 --------------------------
pop <- murders$population
index_min_pop <- which.min(pop)
# Problem 4 --------------------------
states <- murders$state
states[index_min_pop]
# Wyoming is the state with the smallest population
# Problem 5 --------------------------
ranks <- rank(pop)
my_df <- data.frame(state_name = states, state_rank = ranks)
# Problem 6 --------------------------
ind <- order(pop)
my_df$state_name <- my_df$state_name[ind]
my_df$state_rank <- my_df$state_rank[ind]
# Problem 7 --------------------------
data("na_example")
ind <- is.na(na_example)
count_nas <- sum(as.numeric(ind))
# 145 NAs are present in na_example
# Problem 8 --------------------------
mean(na_example[!ind])
# Here, ind has TRUE in positions where NAs are present and FALSE in positions where NAs are absent. So, adding the !(logical negation 'NOT') operator in front of ind helped us compute mean only on entries which don't have NAs