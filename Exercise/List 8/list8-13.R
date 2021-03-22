rm=(list=ls())
library(mosaic)
library(readxl)
L7E13 <- read_excel("D:/IM课程/Moodle 1.3/Exercises Excel files-20201118/Lecture 8/L7E13.xlsx")
View(L7E13)
attach(L7E13)
STATE <- STATE
AHBINCOME <- AHBINCOME
RETAILSALE <- RETAILSALE

#拟合最小二乘直线
Reg <- lm(RETAILSALE~AHBINCOME,data = L7E13)
summary(Reg)

#画出散点图和拟合直线
plot(RETAILSALE~AHBINCOME,data = L7E13)
lines(AHBINCOME,fitted(Reg))
#Based on the graph, it does not appear that the line fits the data very well. The points do not lie very close to the line.

#斜率和截距的置信区间，截距置信区间最最重要的信息之一就是根据正负性判断线性关系
confint(Reg,level=0.95)

