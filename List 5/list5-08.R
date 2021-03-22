rm=(list=ls())
library(mosaic)
library(readxl)
L5E8 <- read_excel("D:/IM课程/Moodle 1.3/Exercises Excel files-20201118/Lecture 5/L5E8.xlsx")
View(L5E8)
attach(L5E8)
DRUG <- DRUG
#总体方差检验统计量，注意这里是左侧检验查表
(length(DRUG)-1)*var(DRUG)/9^2
