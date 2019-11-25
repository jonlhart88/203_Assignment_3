library(tidyverse)
library(janitor)
library(here)

# Business as Usual Scenarios

bau_scenarios <- read_csv("Business As Usual Scenarios Data.csv") %>% 
  clean_names()

ggplot(data = bau_scenarios, aes(x = year)) +
  geom_line(aes(y = high),
            color = "#229954",
            size = 1) +
  geom_line(aes(y = medium),
            color = "#F1C40F",
            size = 1) +
  geom_line(aes(y = low),
            color = "#C0392B",
            size = 1) +
  geom_ribbon(aes(ymin = -400,
              ymax = 0),
              fill = "red",
              alpha = 0.10) +
  geom_hline(yintercept = 0) +
  geom_vline(xintercept = 2022.7,
             linetype = 2) +
  geom_vline(xintercept = 2035.9,
             linetype = 2) +
  geom_vline(xintercept = 2049.3,
             linetype = 2) +
  scale_x_continuous(limits = c(2000, 2050.5),
                     breaks = seq(2000, 2050, by = 5),
                     expand = c(0,0)) +
  scale_y_continuous(limits = c(-400, 600),
                     breaks = seq(-300, 600, by = 100),
                     expand = c(0,0)) +
  theme_minimal() +
  labs(x = "Year",
       y = "Groundwater Flux (10^9 m^3)",
       title = "Groundwater Loss (2000-2050)",
       subtitle = "Business As Usual Scenario") +
  geom_text(x = 2012,
             y = 480,
             label = "High",
             angle = -15) +
  geom_text(x = 2012,
            y = 285,
            label = "Medium",
            angle = -15) +
  geom_text(x= 2012,
            y = 120,
            label = "Low",
            angle = -15) +
  annotate("text", 
           x = 2022, 
           y = 500, 
           label = "(2022-3)",
           size = 4,
           angle = 270) +
  annotate("text", 
           x = 2035.2, 
           y = 500, 
           label = "(2035-6)",
           size = 4,
           angle = 270) +
  annotate("text", 
           x = 2048.5, 
           y = 500, 
           label = "(2049-50)",
           size = 4,
           angle = 270) +
  theme(axis.text.x = element_text(angle = 90))

ggsave(here::here("Final Figures", "boa_scenarios.png"), width = 10, height = 8)

# Policy Scenarios          

policy_scenarios <- read_csv("Policy Scenarios Data.csv") %>% 
  clean_names() 
 
           
ggplot(data = policy_scenarios, aes(x = year)) +
  geom_line(aes(y = high),
            color = "#229954",
            size = 1) +
  geom_line(aes(y = medium),
            color = "#F1C40F",
            size = 1) +
  geom_line(aes(y = low),
            color = "#C0392B",
            size = 1) +
  geom_ribbon(aes(ymin = -400,
                  ymax = 0),
              fill = "red",
              alpha = 0.10) +
  geom_hline(yintercept = 0) +
  geom_vline(xintercept = 2027.3,
             linetype = 2) +
  geom_vline(xintercept = 2045.6,
             linetype = 2) +
  geom_vline(xintercept = 2064.8,
             linetype = 2) +
  scale_x_continuous(limits = c(2000, 2066),
                     breaks = seq(2000, 2065, by = 5),
                     expand = c(0,0)) +
  scale_y_continuous(limits = c(-400, 600),
                     breaks = seq(-300, 600, by = 100),
                     expand = c(0,0)) +
  theme_minimal() +
  labs(x = "Year",
       y = "Groundwater Flux (10^9 m^3)",
       title = "Groundwater Loss (2000-2050)",
       subtitle = "Policy Enacted Scenario") +
  geom_text(x = 2012,
            y = 500,
            label = "High",
            angle = -15) +
  geom_text(x = 2012,
            y = 305,
            label = "Medium",
            angle = -15) +
  geom_text(x= 2012,
            y = 140,
            label = "Low",
            angle = -15) +
  annotate("text", 
           x = 2026.5, 
           y = 500, 
           label = "(2027-8)",
           size = 4,
           angle = 270) +
  annotate("text", 
           x = 2044.8, 
           y = 500, 
           label = "(2045-6)",
           size = 4,
           angle = 270) +
  annotate("text", 
           x = 2064, 
           y = 500, 
           label = "(2064-5)",
           size = 4,
           angle = 270) +
  theme(axis.text.x = element_text(angle = 90))

ggsave(here::here("Final Figures", "policy_scenarios.png"), width = 10, height = 8)





