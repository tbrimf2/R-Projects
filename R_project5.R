#Part 1 graphing binomial distribution
size <- 22 #size of distribution
prob <- 0.38 #probability of successes
trials <- c(0:size)
probabilities <- rbinom(trials, size, prob)
#make trials into a factor
successes <- factor(trials[1:(size+1)])

barplot(height = probabilities, names.arg = successes, xlab = "successes", ylab = "Binomial Probabilities")

#Part 2 random sampling
set.seed(725)
rbinom(35, size, prob)

mean(rbinom(35, size, prob))
sd(rbinom(35, size, prob))

