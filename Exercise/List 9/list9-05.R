rm=(list=ls())
library(mosaic)
library(readxl)
L8E5 <- read_excel("D:/IM课程/Moodle 1.3/Exercises Excel files-20201118/Lecture 9/L8E5.xlsx")
View(L8E5)
attach(L8E5)
Insect_Rep <- Insect_Rep
Type <- Type
Cost <- Cost
Hours <- Hours
#将定性变量转换为数值
Type1 <- ifelse(Type == 'Lotion / Cream', 1, 0)
#对转换完的数据进行回归拟合
reg<- lm(formula = Cost ~ Type1,data = L8E5)
summary(reg)
reg2 <- lm(formula= Hours~ Type1,data= L8E5)
summary(reg2)           
