library(tidyverse)
library(janitor)

# Flux Rates (Business as Usual)

in_2000 <- 12.8
out_2000 <- 18.2

in_2050 <- 10.3
out_2050 <- 27


inputs <- c(in_2000, in_2050)
outputs <- c(out_2000, out_2050)

year <- c(2000, 2050)

flux_in_out <- data.frame(year, inputs, outputs) %>% 
  clean_names()


# Flux Graph (Business as usual)
ggplot(data = flux_in_out, aes(x = year)) +
  geom_point(aes(y = inputs),
             size = 2.5) +
  geom_point(aes(y = outputs),
             size = 2.5) +
  geom_line(aes(y = inputs),
            color = "red",
            size = 1.3) +
 geom_line(aes(y = outputs),
           color = "blue",
           size = 1.3) +
 scale_y_continuous(limits = c(10, 30),
                    breaks = seq(10, 30, by = 2.5)) +
  scale_x_continuous(limits = c(2000, 2050),
                     breaks = seq(2000, 2050, by =5)) +
  theme_minimal() +
  labs(title = "Groundwater Flux Rates (2000-2050)",
       subtitle = "Business as Usual Scenario",
       x = "Year",
       y = "Flux (10^9 m^3)") +
  geom_text(x = 2015, 
            y = 24, 
            label = "Outflow = .176x - 333.8",
            size = 5,
            color = "blue",
            aes(fontface = 1)) +
  geom_text(x = 2030, 
            y = 13, 
            label = "Inflow = -0.05x + 112.8",
            size = 5,
            color = "red",
            aes(fontface = 1)) +
  geom_text(x = 2001,
            y = 17.5, 
            label = "(2000,18.2)",
            size = 3) +
  geom_text(x = 2001,
            y = 13.5, 
            label = "(2000,12.8)",
            size = 3) +
  geom_text(x = 2049,
            y = 11.5, 
            label = "(2050,10.3)",
            size = 3) +
  geom_text(x = 2050,
            y = 28, 
            label = "(2000,27)",
            size = 3)


# Flux Rates (Policy)
             
in_2000_policy <- 12.8
out_2000_policy <- 18.2

in_2050_policy <- 8.5
out_2050_policy <- 18.5


inputs_policy <- c(in_2000_policy, in_2050_policy)
outputs_policy <- c(out_2000_policy, out_2050_policy)

year <- c(2000, 2050)

flux_in_out_policy <- data.frame(year, inputs_policy, outputs_policy) %>% 
  clean_names() 

# Flux graph (policy)
ggplot(data = flux_in_out_policy, aes(x = year)) +
  geom_point(aes(y = inputs_policy),
             size = 2.5) +
  geom_point(aes(y = outputs_policy),
             size = 2.5) +
  geom_line(aes(y = inputs_policy),
            color = "red",
            size = 1.3) +
  geom_line(aes(y = outputs_policy),
            color = "blue",
            size = 1.3) +
  scale_x_continuous(limits = c(2000, 2050),
                     breaks = seq(2000, 2050, by =5)) +
  scale_y_continuous(limits = c(8, 20),
                     breaks = seq(8, 20 , by = 2)) +
  theme_minimal() +
  labs(title = "Groundwater Flux Rates (2000-2050)",
       subtitle = "Policy Scenario",
       x = "Year",
       y = "Flux (10^9 m^3)") +
  geom_text(x = 2025, 
            y = 17.5, 
            label = "Outflow = .176x - 333.8",
            size = 5,
            color = "blue",
            aes(fontface = 1)) +
  geom_text(x = 2025, 
            y = 12, 
            label = "Inflow = -0.05x + 112.8",
            size = 5,
            color = "red",
            aes(fontface = 1)) +
  geom_text(x = 2001,
            y = 17.8, 
            label = "(2000,18.2)",
            size = 3) +
  geom_text(x = 2001,
            y = 13.5, 
            label = "(2000,12.8)",
            size = 3) +
  geom_text(x = 2049,
            y = 9.3, 
            label = "(2050,8.5)",
            size = 3) +
  geom_text(x = 2049,
            y = 19, 
            label = "(2050,18.5)",
            size = 3)

