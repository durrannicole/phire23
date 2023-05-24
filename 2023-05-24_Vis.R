# Nicole Duran 
# durrannicole@arizona.edu
# 2023-05-24
# Purpose: intro data visualization ggplot2 

#libraries 
library(ggplot2)
library(dplyr)
library(tidyr)
library(emoGG)


gapminder <- gapminder 
#to actually install.packages() 
# ^ to do more than one c()
# install

# Making a Visualization, this part looks at different ways to see data 

?ggplot2
ggplot( data = gapminder)
#Continuous (GDP) EMOJIS
# ggplot( data = gapminder,
#         mapping = aes(x = gdpPercap, y = lifeExp)) +
#   geom_point(alpha = 0.5, color = "orange") + 
#   geom_emoji(emoji = "1f436") +
#   scale_x_log10() + 
#   geom_smooth(method = "lm", linewidth = 3)

# Categorical (Year)
ggplot(gapminder, 
       aes(x = year, y = lifeExp, group = country)) + 
  geom_point() +
  geom_line(aes(color = continent)) 

# Visualize Americas only 
gapminder %>% # ctrl+shift+m for pipe
  filter(continent == "Americas")

americas <- gapminder %>% 
  filter(continent == "Americas")
  
  # plot Americas 
  ggplot(americas,
         aes( x= year, y = lifeExp, group = country)) + 
  geom_line() +
  facet_wrap(~country) +
  labs( x= "Year", 
        y= "life expectancy", 
        title = "Title")

  
  