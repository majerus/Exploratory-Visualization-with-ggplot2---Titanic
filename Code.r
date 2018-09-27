# Exploratory Visualization using ggplot2 - Titanic
# 9-23-2018

# RM - Remember to load your libraries (they do this for you on DataCamp)
library(tidyverse)

# RM - I added this to load the data that was provided in DataCamp
titanic <- read.table("titanic.txt")

# Check the structure of titanic
str(titanic)

# Use ggplot() to create a dodged bar plot mapping Pclass to the x variable and Sex onto fill
ggplot(titanic, aes(x = Pclass, fill = Sex)) +
  geom_bar(position = "dodge")

# Add a facet_grid() layer
ggplot(titanic, aes(x = Pclass, fill = Sex)) +
  geom_bar(position = "dodge") +
  facet_grid(.~ Survived)

# Define an object for position_jitterdodge
posn.jd <- position_jitterdodge(0.5, 0, 0.6)

# Change the bar plot into a scatter plot, map Age onto y, change the fill aesthetic into the color aesthetic
# Adjust the geom layer to include size, alpha, and the position object.

ggplot(titanic, aes(x = Pclass, y = Age,  color = Sex)) +
  geom_point(size = 3, alpha = 0.5, position = posn.jd) +
  facet_grid(.~ Survived)



