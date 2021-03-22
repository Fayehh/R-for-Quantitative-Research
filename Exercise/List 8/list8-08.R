rm=(list=ls())
library(mosaic)
library(readxl)
L7E8 <- read_excel("D:/IM课程/Moodle 1.3/Exercises Excel files-20201118/Lecture 8/L7E8.xlsx")
View(L7E8)
attach(L7E8)
DECADE <- DECADE
USBIRTHS <- USBIRTHS
SWBDAYS <- SWBDAYS
CEOBDAYS <- CEOBDAYS

Reg <- lm(SWBDAYS~USBIRTHS,data = L7E8)
summary(Reg)
#给定置信度下参数的置信区间
confint(Reg,level=0.95)

RegB<-lm(formula = SWBDAYS~CEOBDAYS, data = L7E8)
summary (RegB)
confint(RegB,level=0.95)

#可以根据斜率的置信区间判断是否存在线性关系