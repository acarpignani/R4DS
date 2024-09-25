
# First session: getting to know R

# In this first session we are exploring how to assign
# a value to a variable, how to assign a vector to a variable,
# how to add names to vectors and a few functions with vectors.

# 1. Assign a value to a variable

my_var <- 10
my_var

# To exemplify how to work with vectors, we want to use the
# a quantity called BMI - Body Mass Index. The BMI is defined 
# as follows:
#
# BMI = weight / height ^ 2
#
# weight should be in kg and height in metres.

# Example of a hypotetical person:
my_weight <- 92.5
my_height <- 1.75

my_BMI <- my_weight / my_height^2
my_BMI

# How do I store more than one value in only one variable?

# 2. Assign a vector to a variable

weight <- c(75.0, 82.3, 81.7, 78.3, 71.2)
height <- c(1.72, 1.77, 1.68, 1.81, 1.71)
weight
height

BMI <- weight / height^2
BMI

# A person with a BMI > 25 is considered to be overweight
# Let's check the overweights for this vector of data:
BMI > 25


# 3. Assign names to the components of a vector:

# Who are these people? The function names() assign the names
# to the components.
name <- c("John", "Jack", "Jane", "Jill", "Josh")
name

names(weight) <- name
weight
names(height) <- name
height

BMI <- round(weight / height^2, 0)
overweight <- BMI > 25
overweight


# 4. Another example: temperatures (in degree Celsius)

temperature <- c(18.4, 19.2, 17.4, 20.1, 18.9, 17.6, 15.2)
length(temperature)
days <- c("Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday")
names(temperature) <- days
temperature

names(temperature) <- NULL
temperature

names(temperature) <- c("Monday", "Tuesday", "Wednesday")
temperature


# 5. Some useful functions:

mean(weight)
median(weight)
max(weight)
min(weight)
summary(weight)
sd(weight)


# 6. Ages of employees and junior employees

age <- c(23, 28, 35, 41, 54, 28, 29, 44, 61, 52, 31, 37)
length(age)
mean(age)

# A junior employee is an employee with age less than or equal to 33.
is_junior <- age <= 33
is_junior
