#import women and men weight datasets
men_data <- read.csv("C:/Users/Tbrim/Documents/Dataset_Weight_Men.csv", header = TRUE)
women_data <- read.csv("C:/Users/Tbrim/Documents/Dataset_Weight_Women.csv", header = TRUE)

#create histogram for women weight data
women_weight <- women_data$Weight
#intervals for bins
breakpts <- seq(10, 80, 180)
hist(women_weight, right = FALSE, breaks = breakpts, ylim = c(0,60), 
     main = "Histagram of Women's weight", xlab = "Women's weight",
     freq = TRUE)

#five number summary of data
fivenum(women_weight)

#sample mean, sample std dev and size 
mean(women_weight)
sd(women_weight)
length(women_weight)

#hypothesis test to determine if the average weight of 
#men is higher than the average weight of women by less
#than 39.5 pounds
male_weight <- men_data$Weight
t.test(male_weight, women_weight, mu = 39.5, alternative = "less", 
       conf.level = 0.915, var.equal = FALSE)

#critical value
conf_level <- 0.915
t_alpha <- qt(conf_level, df = 428.48)
-t_alpha
