
library(tidyverse)

diamonds

# Slice a sample of the dataset for EDA
set.seed(123)
sampled_diamonds <- slice_sample(diamonds, n = 5000)
sampled_diamonds

# graph price vs carat
ggplot(sampled_diamonds, aes(x = carat, y = price)) +
    geom_point(alpha = 0.25)

# x, y and z are the three dimensions of the diamond.
# We claim that they are strongly correlated with carat.

# mutate(sampled_diamonds, ...)

sampled_diamonds |> 
    mutate(volume = x * y * z) |> 
    ggplot(aes(x = volume, y = carat)) +
    geom_point(alpha = 0.3) +
    geom_smooth(method = "lm", se = FALSE)


model_df <- sampled_diamonds |> 
    mutate(volume = x * y * z)

model_df

# I want to find an equation of the form carat = a * volume + b
# We need a linear model
model <- lm(carat ~ volume, data = model_df)
summary(model)

# carat = 6.178e-03 * volume - 3.808e-03

set.seed(234)
testing_df <- 
    anti_join(diamonds, sampled_diamonds) |> 
    slice_sample(n = 10)

tidy_test <- testing_df |> 
    mutate(volume = x * y * z) |> 
    select(carat, volume)
tidy_test |> 
    bind_cols(pred = predict(model, newdata = tidy_test)) |> 
    mutate(diff = pred - carat,
           error = diff / carat * 100)

sampled_diamonds

# Exercise: a boxplot with clarity vs price
# use either diamonds or sampled_diamonds as you wish

ggplot(diamonds, aes(x = clarity, y = price, colour = clarity)) +
    geom_boxplot(show.legend = FALSE) +
    labs(x = "Clarity of the diamond", y = "Price in USD",
         title = "Boxplot of clarity vs price of the diamond set") +
    scale_colour_viridis_d(option = "magma")

# Next lesson you work...
iris <- as_tibble(iris)
iris


