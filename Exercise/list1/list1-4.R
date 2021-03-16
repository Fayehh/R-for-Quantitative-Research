rm=(list=ls())
library(mosaic)
library(readxl)
L1E4 <- read_excel("D:/IM课程/Moodle 1.3/Exercises Excel files-20201118/Lecture 1/L1E4.xlsx")
View(L1E4)
attach(L1E4)
#删除缺失值
Honey1 <- na.omit(Honey)
DM1 <- na.omit(DM)
Control1 <- na.omit(Control)
#中位数
median(Honey1)
median(DM1)
median(Control1)
