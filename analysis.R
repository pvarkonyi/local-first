
library(tidyverse)

penguins <- read_csv("penguins.csv")

penguins |>
  count(species)