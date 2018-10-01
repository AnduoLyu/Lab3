library(ggplot2)
library("gapminder")
library(dplyr)
gapminder
colnames(gapminder)
gapminder1 <- filter(gapminder, year == 2007)
annotate <- filter(gapminder1, gdpPercap > 40000, continent == "Europe")
p <- ggplot(data = gapminder1, aes(x = gdpPercap, y = lifeExp)) +
  geom_point() +
  geom_text(data = annotate, aes(label = country), color = "blue", vjust = 1) +
  labs(x = "GDP per capita", y = "ife expectancy") +
  theme_bw()
p


pp <- ggplot(data = gapminder1, aes(x = gdpPercap, y = lifeExp)) +
  geom_point(shape = 1, size = 2, stroke = 1.5) +
  labs(x = "GDP per capita", y = "ife expectancy") +
  theme_bw()
  
pp + annotate("text", x = 45000 : 44998, y = 73 : 71, label = c("Countries with", "", "highest GDP")) + 
  annotate("rect", xmin = 38500, xmax = 50000, ymin = 75, ymax = 85, fill = "red", alpha = 0.2)

?geom_text
