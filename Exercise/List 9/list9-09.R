rm=(list=ls())
library(mosaic)
library(readxl)
L8E9 <- read_excel("D:/IM课程/Moodle 1.3/Exercises Excel files-20201118/Lecture 9/L8E9.xlsx")
View(L8E9)
attach(L8E9)
DESIRE <- DESIRE
SELFESTM <- SELFESTM
BODYSAT <- BODYSAT
IMPREAL <- IMPREAL
GENDER <- GENDER
reg <- lm(formula = DESIRE ~ SELFESTM+BODYSAT+IMPREAL+GENDER,data = L8E9)
summary(reg)
cor(L8E2) 
Desire.res <- resid(reg)
Desire.res
plot(L8E9$SELFESTM+BODYSAT+IMPREAL+GENDER, Desire.res, ylab="Residuals", xlab="SELFESTM+BODYSAT+IMPREAL+GENDER", main="Residual plot for Desire")
