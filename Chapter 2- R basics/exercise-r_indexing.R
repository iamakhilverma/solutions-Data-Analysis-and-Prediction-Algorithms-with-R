# Load the packages --------------------------
library(dslabs)
# Load the data --------------------------
data("murders")
# Problem 1 --------------------------
murder_rate <- murders$total / (murders$population / 100000)
low <- murder_rate < 1
# Problem 2 --------------------------
ind_low <- which(murder_rate < 1)
# Problem 3 --------------------------
states_low <- murders$state[ind_low]
# Problem 4 --------------------------
NE_states_lower_than_1 <- murders$state[low & (murders$region == "Northeast")]
# Problem 5 --------------------------
av_murder_rate <- mean(murder_rate)
states_below_av_murder_rate <- murders$state[murder_rate < av_murder_rate]
number_of_states_below_av_murder_rate <- length(states_below_av_murder_rate)
# number_of_states_below_av_murder_rate <- sum(murder_rate < av_murder_rate)
# Problem 6 --------------------------
ind_matched_states <- match(c("AK", "MI", "IA"), murders$abb)
matched_states <- murders$state[ind_matched_states]
# Problem 7 --------------------------
bool <- c("MA", "ME", "MI", "MO", "MU") %in% murders$abb
# Problem 8 --------------------------
entry_not_present <- c("MA", "ME", "MI", "MO", "MU")[!bool]
print(entry_not_present)
# bool <- which(!(c("MA", "ME", "MI", "MO", "MU") %in% murders$abb))
# entry_not_present <- c("MA", "ME", "MI", "MO", "MU")[bool]