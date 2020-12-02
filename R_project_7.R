#part a: import data
setwd("/Users/Tbrim/Downloads/Dice_version4.csv")
getwd()
dice <- read.csv("Dice_version4.csv",header = TRUE, row.names = 1)
dice_vec <- dice$x

#part b and c: create qqplot and run shapiro test
qqnorm(dice_vec)  
qqline(dice_vec)
shapiro.test(dice_vec)

#part d: Find mean, std dev, and variance
mean(dice_vec)
sd(dice_vec)
(sd(dice_vec)) ** 2
var(dice_vec)

#Part e: Create barplot
freq_1 <- length(dice_vec[dice_vec == 1])
freq_2 <- length(dice_vec[dice_vec == 2])
freq_3 <- length(dice_vec[dice_vec == 3])
freq_4 <- length(dice_vec[dice_vec == 4])
freq_5 <- length(dice_vec[dice_vec == 5])
freq_6 <- length(dice_vec[dice_vec == 6])
height <- c(freq_1, freq_2, freq_3, freq_4, freq_5, freq_6)
barplot(height, main = "Barplot of Dice", xlab = "Result of Die Roll", ylab = "Frequency", names.arg = factor(1:6))

#part g: Build a sampling distribution of smaples of size 10
set.seed(62) ## make sure that you can replicate your results
samples10 <- as.data.frame(matrix(rep(NA, 100*10), nrow = 100, ncol = 10))
## Creates an empty data frame to store our results in.
## 100*10 = number of rows times number of columns
for (i in 1:100){ ## repeat for each dataset that we want to create
  samples10[i,] <- sample(dice_vec, size = 10, replace = TRUE)
} ## performs the sampling; size represents the sample size
rowmeans10 <- rowMeans(samples10) ## generates the average value for
## each row of sampled data
## need to use this result for Questions 7 and 8.

#part h: create histogram
hist(rowmeans10, right = FALSE)

#part i: create qqplot with reference line 
qqnorm(rowmeans10)
qqline(rowmeans10)

#part j: run shapiro test for rowmeans10
shapiro.test(rowmeans10)

#question 7 and 8
mean(rowmeans10)
sd(rowmeans10)

#part o
set.seed(62)
samples500 <- as.data.frame(matrix(rep(NA, 100*10), nrow = 100, ncol = 10))
for (i in 1:100){
  samples500[i,] <- sample(dice_vec, size = 500, replace = TRUE)
}

rowmeans500 <- rowMeans(samples500)

#histogram for size 500
hist(rowmeans500, right = FALSE)

#qqplot with reference line
qqnorm(rowmeans500)
qqline(rowmeans500)

#shapiro test on size 500
shapiro.test(rowmeans500)

#mean and std dev for size 500
mean(rowmeans500)
sd(rowmeans500)