#C1
data <- read.csv("C:/Users/Tbrim/Documents/Dataset.csv", header = TRUE)

#C2
str(data)
help("str")
help("levels")

#C3
levels(data$Course)
levels(as.factor(data$Course))
levels(as.factor(data$Grade))

#C4
sum(data$Grade)
mean(data$Grade)
sd(data$Grade)
fivenum(data$Grade)

#C5
tapply(data$Grade, data$Course, sum)
tapply(data$Grade, data$Course, mean)
tapply(data$Grade, data$Course, sd)
tapply(data$Grade, data$Course, fivenum)

#C6
box1 <- boxplot(data$Grade, horizontal = TRUE)
box1$stats
box1$out

#C7
box2 <- boxplot(data$Grade ~ data$Course, data = data, xlab = "Courses", ylab = "Grades")
box2$stats
box2$out

#C8
stat_381 <- subset(data$Grade, data$Course == "Stat_381")
stat_481 <- subset(data$Grade, data$Course == "Stat_481")

#C9
break_pts <- seq(0,120,10)

#C10
par(mfrow = c(2,2))

graph1 <- hist(stat_381, right = FALSE, breaks = break_pts, ylim = c(0,7))
graph2 <- hist(stat_481, right = FALSE, breaks = break_pts, ylim = c(0,7))

graph1$counts
graph2$counts

hist(stat_381, right = FALSE, breaks = break_pts, ylim = c(0,0.04), ylab = "Density", freq = FALSE)
curve(dnorm(x, mean = mean(stat_381), sd = sd(stat_381)), col = "red", lty = 1, add = TRUE)
hist(stat_481, right = FALSE, breaks = break_pts, ylim = c(0,0.04), ylab = "Density", freq = FALSE)
curve(dnorm(x, mean = mean(stat_481), sd = sd(stat_481)), col= "red", lty = 1, add = TRUE)