rm(list=ls())
library(mosaic)
library(readxl)
L8E2 <- read_excel("D:/IM课程/Moodle 1.3/Exercises Excel files-20201118/Lecture 9/L8E2.xlsx")
View(L8E2)
attach(L8E2)
STUDENT <- STUDENT
SELFESTM <- SELFESTM
BODYSAT <- BODYSAT
IMPREAL <- IMPREAL
DESIRE <- DESIRE
GENDER <- GENDER
#求最小二乘方程
Reg<-lm(formula = DESIRE~GENDER+SELFESTM+BODYSAT+IMPREAL, data = L8E2)
summary(Reg)
confint(Reg,level=0.95)
