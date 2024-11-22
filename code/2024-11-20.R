
library(tidyverse)

diamonds

glimpse(diamonds)
summary(diamonds)

ggplot(diamonds, aes(x = carat, y = price)) +
    geom_point()

set.seed(123)
diamonds_sampled <- slice_sample(diamonds, prop = 0.25)

ggplot(diamonds, aes(x = carat, y = price)) +
    geom_point(alpha = 0.01, size = 5)

ggplot(diamonds_sampled, aes(x = cut, y = price, colour = cut)) +
    geom_boxplot(show.legend = FALSE)

ggplot(diamonds_sampled, aes(x = color, y = price, colour = color)) +
    geom_boxplot(show.legend = FALSE)

ggplot(diamonds_sampled, aes(x = color, y = price, colour = cut)) +
    geom_boxplot()
