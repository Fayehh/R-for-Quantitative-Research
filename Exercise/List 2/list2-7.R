rm=(list=ls())
library(mosaic)
library(readxl)
L2E7 <- read_excel("D:/IM课程/Moodle 1.3/Exercises Excel files-20201118/Lecture 2/L2E7.xlsx")
View(L2E7)
attach(L2E7)
NUMSITES <- NUMSITES
#计算分位数
arranged_L2E7 <- arrange(L2E7)#arrange()是对整个表格排序
quantile(arranged_L2E7$NUMSITES, c(.10)) #10th分位数，means at least 10% of the observations are less than 0
#或者用sort()函数
sorted_num <- sort(NUMSITES)
quantile(sorted_num, c(.10))
quantile(sorted_num, c(.95))

mean(NUMSITES)
sd(NUMSITES)
z_score <- (48-mean(NUMSITES))/sd(NUMSITES)
z_score
