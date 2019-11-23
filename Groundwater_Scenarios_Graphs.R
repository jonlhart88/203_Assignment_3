library(tidyverse)
library(janitor)
library(here)

# Business as Usual Scenarios

bau_scenarios <- read_csv("Business As Usual Scenarios Data.csv") %>% 
  clean_names()


ggplot(data = bau_scenarios, aes(x = year)) +
  geom_line(aes(y = high),
            color = "green",
            size = 1) +
  geom_line(aes(y = medium),
            color = "yellow",
            size = 1) +
  geom_line(aes(y = low),
            color = "red",
            size = 1) +
  geom_ribbon(aes(ymin = -400,
              ymax = 0),
              fill = "red",
              alpha = 0.2) +
  scale_x_continuous(limits = c(2000, 2050),
                     breaks = seq(2000, 2050, by = 5),
                     expand = c(0,0)) +
  scale_y_continuous(limits = c(-400, 600),
                     breaks = seq(-300, 600, by = 100),
                     expand = c(0,0)) +
  theme_minimal() +
  geom_text(x = 2015,
            y = -200, 
            label = "Groundwater Depleted",
            size = 4,
            aes(fontface = 1)) +
  labs(x = "Year",
       y = "Groundwater Flux (10^9 m^3)",
       title = "Groundwater Loss (2000-2050)",
       subtitle = "Business As Usual Scenario") 




