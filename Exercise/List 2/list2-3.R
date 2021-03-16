rm=(list=ls())
library(mosaic)
library(readxl)
L2E3 <- read_excel("D:/IM课程/Moodle 1.3/Exercises Excel files-20201118/Lecture 2/L2E3.xlsx")
View(L2E3)
attach(L2E3)
STATE <- STATE
PLANTS <- PLANTS

range(PLANTS)
var(PLANTS)
sd(PLANTS)

#删除最大值
PLANTS_ <- sort(PLANTS)
PLANTS_1 <- PLANTS_[-length(PLANTS)] #删除数组元素，R数组下标从1开始
PLANTS_1
range(PLANTS_1)
var(PLANTS_1)
sd(PLANTS_1)

#删除最小值
PLANTS_2 <- PLANTS_[-1]
PLANTS_2
range(PLANTS_2)
var(PLANTS_2)
sd(PLANTS_2)
