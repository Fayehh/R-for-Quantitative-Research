#配对样本
rm=(list=ls())
library(mosaic)
library(readxl)
L6E3 <- read_excel("D:/IM课程/Moodle 1.3/Exercises Excel files-20201118/Lecture 6/L6E3.xlsx")
View(L6E3)
attach(L6E3)
Operator <- Operator
Before <- Before
After <- After
#R直接进行配对样本右侧均值t检验
t.test(Before, After, paired = TRUE, alternative = "greater")
#t统计量大于临界值/p小于0.05,拒绝原假设

