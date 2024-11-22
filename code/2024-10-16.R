

vec_1 <- 1:10
vec_1

# 3rd element in vec_1
vec_1[3]

# 5th and 6th elements
vec_1[c(5, 6)]


vec_2 <- 100:110
vec_2

# 3rd and 5th elements = subsetting
vec_2[c(3, 5)]

# From the 3rd to the 6th = slicing the vector
vec_2[3:6]


age <- c(35, 28, 32, 41, 34, 28, 48, 52, 32, 41)
junior <- age <= 33
junior

length(age)

age[junior]

employees <- c("Jane", "Jack", "Jill", "Joe",
               "John", "Jeanine", "Jeanette",
               "Jacqueline", "Joseph", "Jean")
names(age) <- employees
age
junior_employees <- age[junior]
junior_employees

age["Jacqueline"]
age["Jill"]
age[c("Jack", "Joe")]

ordered_age <- sort(age)

age
