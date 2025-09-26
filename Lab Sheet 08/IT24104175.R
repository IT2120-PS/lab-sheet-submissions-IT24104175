setwd("C:\\Users\\IT24104175\\Desktop\\IT24104175")

##Importing the data set
data<-read.table("Exercise - LaptopsWeights.txt",header=TRUE)

fix(data)
attach(data)

## View column names
names(data)

## Q1: Population Mean and Standard Deviation
pop_mean <- mean(Weight.kg.)
pop_mean

pop_sd <- sd(Weight.kg.)
pop_sd

## Q2: Draw 25 random samples of size 6 (with replacement)
set.seed(123)
sample_means <- numeric(25)
sample_sds <- numeric(25)

for (i in 1:25) {
  sample <- sample(Weight.kg., size = 6, replace = TRUE)
  sample_means[i] <- mean(sample)
  sample_sds[i] <- sd(sample)
}

## Display sample means and standard deviations
cat("\nSample Means:\n")
print(sample_means)

cat("\nSample Standard Deviations:\n")
print(sample_sds)

## Q3: Mean and SD of Sample Means
mean_of_sample_means <- mean(sample_means)
sd_of_sample_means <- sd(sample_means)

cat("\nMean of Sample Means:", mean_of_sample_means, "\n")
cat("Standard Deviation of Sample Means:", sd_of_sample_means, "\n")

## Relationship Explanation
cat("\nRelationship:\n")
cat("The mean of the sample means is approximately equal to the population mean.\n")
cat("The standard deviation of the sample means is smaller than the population SD,\n")
cat("and approximates the standard error: SE = population SD / sqrt(sample size).\n")