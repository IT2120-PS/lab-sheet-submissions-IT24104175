setwd("C:\\Users\\IT24104175\\Desktop\\IT24104175")

getwd()

Delivery_Times <- read.table("Exercise - Lab 05.txt", header = TRUE)

Delivery_Times$`Delivery_Time_.minutes.` <- as.numeric(Delivery_Times$`Delivery_Time_.minutes.`)

hist(Delivery_Times$`Delivery_Time_.minutes.`, 
     breaks = seq(20, 70, by = 5), 
     right = TRUE, 
     col = "lightblue", 
     main = "Histogram of Delivery Times", 
     xlab = "Delivery Time", 
     ylab = "Frequency")

cf <- cumsum(table(cut(Delivery_Times$`Delivery_Time_.minutes.`, breaks = seq(20, 70, by = 5), right = TRUE)))

plot(seq(22.5, 67.5, by = 5), cf, type = "o", col = "blue", 
     xlab = "Delivery Time", ylab = "Cumulative Frequency", 
     main = "Cumulative Frequency Polygon (Ogive)")
