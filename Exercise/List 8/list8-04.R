rm=(list=ls())
library(mosaic)
library(readxl)
L7E4 <- read_excel("D:/IM课程/Moodle 1.3/Exercises Excel files-20201118/Lecture 8/L7E4.xlsx")
View(L7E4)
attach(L7E4)
AACC <- AACC
AAFEMA <- AAFEMA
plot(AAFEMA, AACC, main="Scatterplot")

#用lm()拟合直线
lm(formula = AACC ~ AAFEMA, data = L7E4)
Reg <- lm(formula = AACC ~ AAFEMA, data = L7E4)
summary(Reg)
#给出是两个b系数的显著性检验
#截距p值显著，有统计意义，但是x=0时无经济意义
#斜率p不显著，所以不能得出斜率的意义
lines(AAFEMA, fitted(Reg), col="red")
