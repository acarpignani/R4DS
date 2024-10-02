
# Second lesson. Vectors and importing data.

vec_1 <- c(10, 12, 15, 20, 35)
vec_2 <- 10:20
vec_3 <- seq(10, 20, by = 1)

# Observe that vec_2 and vec_3 are the same
vec_2 == vec_3

vec_4 <- seq(0, 20, by = 2)
vec_5 <- seq(0, 100, by = 10)
vec_6 <- rep(TRUE, times = 10)
vec_7 <- rep(c(0, 1), times = 10)
vec_8 <- rep(c(0, 1), each = 10)

# So far, we are only repeating with a pattern. Now
# we wish to repeat randomly

# Pseudo-random numbers
set.seed(123)

my_first_random_vector <- runif(5)
my_first_random_vector

# Roll a die for 10 times.
set.seed(02102024)

possible_outcomes <- 1:6

outcomes <- sample(possible_outcomes, size = 10, replace = TRUE)
outcomes

# 1. runif(n, min, max)
# 2. sample(set, size, replace)

# Flip a coin 10 times
set.seed(1000)

coin_flipping <- sample(c("Head", "Tails"), size = 10, replace = TRUE)
coin_flipping








