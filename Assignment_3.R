library(tidyverse)
library(janitor)

groundwater_data <- read_csv("groundwater_data.csv") %>% 
  select(-X4) %>% 
  filter(Year == 2000 | Year == 2050)
  

ggplot(data = groundwater_data, aes(x = Year,  y = In)) +
  geom_line(color = "red",
            size = 1) +
  geom_point(size = 2) +
  scale_y_continuous(limits = c(8,13),
                     breaks = seq(8, 13, by = 1)) +
  theme_classic() +
  labs(title = "Groundwater In-flows",
       subtitle = "2000-2050",
       x = "Year",
       y = "Groundwater In-flow (10^9 m^3)") +
  geom_text(x = 2030, 
          y = 11.5, 
          label = "y = -.086x + 167.8",
          size = 5,
          aes(fontface = 1)) 


ggplot(data = groundwater_data, aes(x = Year,  y = Out)) +
  geom_line(color = "blue",
            size = 1) +
  geom_point(size = 2) +
  scale_y_continuous(limits = c(18,18.6),
                     breaks = seq(18, 18.6, by = 0.2)) +
  theme_classic() +
  labs(title = "Groundwater Out-flows",
       subtitle = "2000-2050",
       x = "Year",
       y = "Groundwater Out-flow (10^9 m^3)") +
  geom_text(x = 2030, 
            y = 18.3, 
            label = "y = .006x + 6.2",
            size = 5,
            aes(fontface = 1)) 
         
