#PART 1
#plot standard normal desnity function
x_values <- seq(-3, 3, by=0.1)
y_values <- dnorm(x_values, 0, 1)
plot(x_values, y_values, type = "l", col = 'red', xlab = "Standard Normal Variable", ylab = "Density", main = "Standard Normal Density Function", pch = 18)

#PART 2
#Plot of standard normal cdf
x_vals <- seq(-3, 3, by= 0.1)
y_vals <- pnorm(x_vals, 0, 1)
plot(x = x_vals, y= y_vals, type = "l", col = "blue", xlab = "Standard Normal Variable", ylab = "Probability", main = "Standard Normal CDF Function")
abline(h = 0.05, lty = 2, col = "gray")
abline(h = 0.25, lty = 2, col = "gray")
abline(h= 0.50, lty = 2, col = "gray")
abline(h = 0.75, lty = 2, col = "gray")
abline(h = 0.95, lty = 2, col = "gray")

quant <- qnorm(c(0.05, 0.25, 0.50, 0.75, 0.95), mean = 0, sd = 1, lower.tail = T)
abline(v = quant, lty = 1, col = "red")

pnorm(518, mean = 520, sd = 8, lower.tail = FALSE)
