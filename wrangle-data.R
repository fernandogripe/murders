library(tidyverse)
murders <- read_csv("data/muders.csv")
murders <- murders %>% mutate(region = factor(region), rate = total / population * 10^5)
save(murders, file = "rda/murders.rda")