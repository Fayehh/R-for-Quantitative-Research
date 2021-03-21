remove(list = ls())
library(mosaic)
library(readxl)
L9E5 <- read_excel("IM_Course/2020 Autumn Semester/Module1.3 Research Method/Quantitative/Exercises Excel files-20201115/Lecture 7/L9E5.xlsx")
View(L9E5)
attach(L9E5)

STUDENT <- STUDENT
MEASURE <- MEASURE 
PLANT <- PLANT

Model1 <- aov(MEASURE~PLANT)
# 通过aov得到的结果，可通过anova()或summary()来得到相关的统计结果
summary(Model1)
anova(Model1)
