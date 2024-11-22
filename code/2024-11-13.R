
library(tidyverse)
library(palmerpenguins)

View(penguins)
glimpse(penguins)

# Categorical variables = qualitative data
# species, island, sex, year

ggplot(penguins, aes(x = island)) +
    geom_bar()

ggplot(penguins, aes(x = species)) +
    geom_bar()

# Create a new table for island vs species
penguins |> 
    group_by(island, species) |> 
    count() |> 
    pivot_wider(names_from = island, 
                values_from = n,
                values_fill = 0)


# Let's see the sex variable.
# Is this data set balanced among sexes?
# Are there as many male penguin as female penguin?

penguins |> 
    group_by(sex) |> 
    count()

penguins |> 
    drop_na(sex) |> 
    ggplot(aes(x = sex)) +
    geom_bar()

penguins |> 
    drop_na(sex) |> 
    group_by(species, sex) |> 
    count() |> 
    pivot_wider(names_from = species,
                values_from = n,
                values_fill = 0)

penguins |> 
    drop_na(sex) |> 
    group_by(island, sex) |> 
    count() |> 
    pivot_wider(names_from = island,
                values_from = n,
                values_fill = 0)

penguins

# We have established a correlation between bill length
# and flipper length

# How about bill length and body mass?
# How about bill length and bill depth?
ggplot(penguins, aes(x = bill_length_mm, 
                     y = bill_depth_mm,
                     colour = species)) +
    geom_point() +
    geom_smooth(method = "lm", se = FALSE)

ggplot(penguins, aes(x = body_mass_g, 
                     y = bill_length_mm,
                     colour = species)) +
    geom_point() +
    geom_smooth(method = "lm", se = FALSE)

ggplot(penguins, aes(x = body_mass_g, 
                     y = flipper_length_mm)) +
    geom_point(aes(colour = species)) +
    geom_smooth(method = "lm", se = FALSE)
