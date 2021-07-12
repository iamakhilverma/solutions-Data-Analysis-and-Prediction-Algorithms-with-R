# Load the packages --------------------------
library(dslabs)
# Load the data --------------------------
data("murders")
# Problem 1 --------------------------
popultation_in_millions <- murders$population / 10^6
total_gun_murders <- murders$total
plot(popultation_in_millions, total_gun_murders)
plot(log10(murders$population), log10(total_gun_murders))
# Problem 2 --------------------------
state_population <- murders$population
hist(state_population)
# Problem 3 --------------------------
regions <- murders$region
boxplot(state_population~regions)
boxplot(population~region, data = murders)