rm=(list=ls())
library(mosaic)
library(readxl)
L8E10 <- read_excel("D:/IM课程/Moodle 1.3/Exercises Excel files-20201118/Lecture 9/L8E10.xlsx")
View(L8E10)
attach(L8E10)
ARSENIC <- ARSENIC
LATITUDE <- LATITUDE
LONGITUDE <- LONGITUDE
DEPTH <- DEPTH
#用R进行残差分析
arsenic.lm <- lm(ARSENIC ~ LATITUDE+LONGITUDE+DEPTH, data=L8E10) 
arsenic.res <- resid(arsenic.lm)
arsenic.res
plot(L8E10$LATITUDE+LONGITUDE+DEPTH, arsenic.res, 
     ylab="Residuals", xlab="LATITUDE+LONGITUDE+DEPTH", 
     main="Residual plot for Arsenic") 
abline(0, 0)
histogram(~arsenic.res, xlab="residuals", data=L8E10, 
          col="grey", border="black")
qqnorm(arsenic.res)
qqline(arsenic.res, col="red")
NEWDATA <- cbind(LATITUDE, LONGITUDE, DEPTH)
cor(NEWDATA)
