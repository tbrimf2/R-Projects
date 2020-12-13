#visualize data with histograms and box plots.
#plot multiple graphs at the same time.

#impor data into R
data <- read.csv("C:/Users/Tbrim/Documents/Dataset.csv", header = TRUE)

#obtain information about the data
str(data)
help("str")
help("levels")

#determine how many levels and the names of the columns in dataset
levels(data$Course)
levels(as.factor(data$Course))


#perform summary statistics on data and determine number of data points 
#in dataset
sum(data$Grade)
mean(data$Grade)
sd(data$Grade)
fivenum(data$Grade)

#tapply applies a specific function to a group of values and returns
#the results by group
tapply(data$Grade, data$Course, sum)
tapply(data$Grade, data$Course, mean)
tapply(data$Grade, data$Course, sd)
tapply(data$Grade, data$Course, fivenum)

#Create box plot of the scores for all of the data combined
box1 <- boxplot(data$Grade, horizontal = TRUE)
box1$stats
box1$out

#Create multiple box plots separated by course and detmine the 
#ouliers for each course
box2 <- boxplot(data$Grade ~ data$Course, data = data, xlab = "Courses", ylab = "Grades")
box2$stats
box2$out

#Generate histograms to compare 2 specific stat courses
#separate data into the courses for comparison
stat_381 <- subset(data$Grade, data$Course == "Stat_381")
stat_481 <- subset(data$Grade, data$Course == "Stat_481")

#bins for the x values in the histogram
break_pts <- seq(0,120,10)

#draw 4 histograms in 1 window: 2 normal histograms and 2 density histrograms for both courses
par(mfrow = c(2,2))

graph1 <- hist(stat_381, right = FALSE, breaks = break_pts, ylim = c(0,7))
graph2 <- hist(stat_481, right = FALSE, breaks = break_pts, ylim = c(0,7))

graph1$counts
graph2$counts

hist(stat_381, right = FALSE, breaks = break_pts, ylim = c(0,0.04), ylab = "Density", freq = FALSE)
curve(dnorm(x, mean = mean(stat_381), sd = sd(stat_381)), col = "red", lty = 1, add = TRUE)
hist(stat_481, right = FALSE, breaks = break_pts, ylim = c(0,0.04), ylab = "Density", freq = FALSE)
curve(dnorm(x, mean = mean(stat_481), sd = sd(stat_481)), col= "red", lty = 1, add = TRUE)