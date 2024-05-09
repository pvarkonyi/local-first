
library(tidyverse)

penguins <- read_csv("penguins.csv")

penguins |>
  count(island)

penguins |>
  select(-(bill_depth_mm)) |>
  filter(sex == "female") |>
  group_by(island) |>
  summarise(mean_bill_length = mean(bill_length_mm))