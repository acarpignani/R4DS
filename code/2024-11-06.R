

install.packages("tridyverse")
install.packages("palmerpenguins")

library(tidyverse)
library(palmerpenguins)

penguins

penguins |> 
    group_by(year) |> 
    count()

ggplot(penguins, aes(x = bill_length_mm, y = flipper_length_mm)) +
    geom_point() +
    geom_smooth(method = "lm", se = FALSE)

distinct(penguins, sex)
penguins |> distinct(sex)


penguins |> 
    group_by(sex) |> 
    count()

count(group_by(penguins, sex))

penguins |> 
    group_by(species) |> 
    count()

View(penguins)
penguins |> 
    group_by(island) |> 
    count()

ggplot(penguins, aes(x = bill_length_mm, 
                     y = flipper_length_mm,
                     colour = species)) +
    geom_point() +
    geom_smooth(method = "lm", se = FALSE)

penguins |> 
    ggplot(aes(x = sex)) +
    geom_bar()

penguins |> 
    ggplot(aes(x = species)) +
    geom_bar()
