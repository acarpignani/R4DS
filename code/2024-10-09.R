
# Practice Questions

# Question 1
vec_1 <- 1:10
vec_2 <- sort(vec_1, decreasing = TRUE)
vec_3 <- c(vec_1, vec_2)
vec_3

# Question 2
set.seed(101)
?runif()
vec <- runif(n = 20, min = 0, max = 1)
vec

vec[5:15] <- vec[5:15] ^ 2
vec

# Question 3
stock_prices <- c(23, 27, 23, 21, 34)
names(stock_prices) <- c("Mon", "Tue", "Wed", "Thu", "Fri")
stock_prices
mean(stock_prices)
sd(stock_prices)

