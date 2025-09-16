setwd("C://Users//nitha//OneDrive//Desktop//IT24104175")

cat("----- Exercise Q1 (Train arrival, Uniform) -----\n")

# Q1: Train arrives uniformly between 8:00 and 8:40 (0 to 40 minutes)
a <- 0
b <- 40
x1 <- 10   # 8:10 -> 10 minutes after 8:00
x2 <- 25   # 8:25 -> 25 minutes after 8:00

# Probability the train arrives between 8:10 and 8:25
prob_q1 <- punif(x2, min=a, max=b) - punif(x1, min=a, max=b)
cat(sprintf("Q1) P(8:10 <= arrival <= 8:25) = %.6f\n", prob_q1))

cat("\n----- Exercise Q2 (Software update, Exponential) -----\n")

# Q2: Exponential with rate lambda = 1/3
lambda <- 1/3
t <- 2  # hours

# Probability update takes at most 2 hours = 1 - exp(-lambda * t)
prob_q2 <- pexp(t, rate=lambda)   # same as 1 - exp(-lambda*t)
cat(sprintf("Q2) P(update <= 2 hours) = %.6f\n", prob_q2))

cat("\n----- Exercise Q3 (IQ, Normal) -----\n")

mu <- 100
sigma <- 15

# i) P(IQ > 130)
prob_q3_i <- 1 - pnorm(130, mean=mu, sd=sigma)
cat(sprintf("Q3.i) P(IQ > 130) = %.6f\n", prob_q3_i))

# ii) IQ score representing 95th percentile
iq_95 <- qnorm(0.95, mean=mu, sd=sigma)
cat(sprintf("Q3.ii) 95th percentile IQ score = %.4f\n", iq_95))
