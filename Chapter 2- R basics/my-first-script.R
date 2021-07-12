# Load packages --------------------------------------------
library(tidyverse)
library(dslabs)
# Load data --------------------------------------------
data(murders)
# Plot data --------------------------------------------
murders %>%
  ggplot(aes(population, total, label = abb, color = region)) +
  geom_label()
