rm=(list=ls())
library(mosaic)
library(readxl)
L7E6 <- read_excel("D:/IM课程/Moodle 1.3/Exercises Excel files-20201118/Lecture 8/L7E6.xlsx")
View(L7E6)
attach(L7E6)

STATE <- STATE
AAFEMA <- AAFEMA
AACC<-AACC
FEMA09_MIL <- FEMA09_MIL
POP10_THOU<- POP10_THOU
PC10yrs <- PC10yrs
FEMA_PERCAP<-FEMA_PERCAP
Convictions_PERCAP <- Convictions_PERCAP

Reg <- lm(AACC~AAFEMA, DATA=L7E6)
summary(Reg)
#方差分析anova()输出方差分析表
anova(lm(AACC ~ AAFEMA, L7E6))
#读表，方差0.022253，计算sd
sd_ <- sqrt(0.022253)
sd_

# how accurate the model is
range(AACC)
0.71-0.06
4*sd_
#绝大部分y实际观测值都落在最小二乘预测值的2个标准差之内.距离均值波动2个sd,得到的width和range差不多大小，so it does not help very much in the prediction
