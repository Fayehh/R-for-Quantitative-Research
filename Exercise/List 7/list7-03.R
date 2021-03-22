rm(list = ls())
library(mosaic)
library(readxl)
L9E3 <- read_excel("IM_Course/2020 Autumn Semester/Module1.3 Research Method/Quantitative/Exercises Excel files-20201115/Lecture 7/L9E3.xlsx")
View(L9E3)
attach(L9E3)

NO <- NO
CHECK <- CHECK 
FULL <- FULL 
IMPROVE <- IMPROVE 
ASSIST <- ASSIST

# 可以通过箱形图查看是否存在outliers
boxplot(IMPROVE~ASSIST, main="Fig.-1: Boxplot of the three different types of Assistance", col= rainbow(3))
# 找到具体的outliers
boxplot.stats(IMPROVE[ASSIST=="NO"])

# 有outliers则过滤掉，没有则开始进行方差分析
Model1 <- aov(IMPROVE~ASSIST)
# 通过得到的p值去判断是否拒绝原假设
summary(Model1)

