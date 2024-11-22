
# Employees
employees <- c("Jane", "Jack", "Jill", "Joan", "Jon")
ages <- c(32, 38, 41, 29, 34)
salaries <- c(28000, 34000, 31000, 29000, 32000)

# I could name the vectors using employees

# data frames --- tibbles
install.packages("tidyverse")
library(tidyverse)

firm <- tibble(
    name = employees,
    age = ages,
    salary = salaries
)

firm

# Examples of tibbles
as_tibble(iris)
mpg

ggplot(mpg, aes(x = displ, y = hwy)) +
    geom_point()
