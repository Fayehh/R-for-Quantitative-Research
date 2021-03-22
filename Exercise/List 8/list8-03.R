rm=(list=ls())
library(mosaic)
library(readxl)
L7E3 <- read_excel("D:/IM课程/Moodle 1.3/Exercises Excel files-20201118/Lecture 8/L7E3.xlsx")
View(L7E3)
attach(L7E3)
xi <- xi
yi <- yi

Reg<-lm(formula=yi ~ xi, data = L7E3)
summary (Reg)
#回归直线：y_hat = -0.77966 + 7.10169 x

plot(xi, yi, main="Scatterplot", col="red")
#函数lines()其作用是在已有图上加线，命令为lines(x,y),其功能相当于plot(x,y,type="1")但是plot会创建新图
lines(xi, fitted(Reg), col="red")
#添加一条特定直线（纵截距，斜率）
abline(14, -2.5, col="blue")
