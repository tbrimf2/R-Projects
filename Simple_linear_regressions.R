#import the data
x <- c(10,10,11,11,12,15,17,19,20,20,23,25,27,30)
y <- c(21.0,19.9,22.7,23.7,25.0,30.5,36.1,38.8,41.5,
       42.5,45.0,50.0,54.0,62.2)

#scatter plot to see if data is linear
plot(x,y, xlab = 'Baking Temp', ylab = 'Percent Yield',
     main = 'Plot of Baking Temperature against Percentage')
abline()
LR <- lm(y~x)
abline(LR)
summary(LR)

#another simple linear regression model
attendance <- c(119,130,121,120,134,133,126,125,132,128)
bet_amt <- c(2.1,3.2,2.6,2.2,3.3,3.9,2.8,2.7,3.4,3.5)

plot(attendance,bet_amt, xlab = 'Attendance', 
     ylab ='The amount bet', main = 'Attendance at a racetrack against the total amount of bet placed' )

model <- lm(bet_amt~attendance)
summary(model)

#define residuals and create QQ-plot to see they follow normal distribution
res <- resid(model)
qqnorm(res)
qqline(res)

shapiro.test(res)
