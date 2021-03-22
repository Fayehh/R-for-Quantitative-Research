rm=(list=ls())
library(mosaic)
library(readxl)
L6E1 <- read_excel("D:/IM课程/Moodle 1.3/Exercises Excel files-20201118/Lecture 6/L6E1.xlsx")
View(L6E1)
attach(L6E1)
POSITIVE <- POSITIVE
NEUTRAL <- NEUTRAL
#数据预处理，删除缺失值
NEUTRAL1 <- na.omit(NEUTRAL)
#R语言可以直接进行t检验,独立样本时paired可省略
t.test(POSITIVE, NEUTRAL1, paired = FALSE) #p值小于0.05，拒绝原假设
