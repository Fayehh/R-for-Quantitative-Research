rm(list=ls())
library(mosaic)
library(readxl)
L7E10 <- read_excel("D:/IM课程/Moodle 1.3/Exercises Excel files-20201118/Lecture 8/L7E10.xlsx")
View(L7E10)
attach(L7E10)
DECADE <- DECADE
USBIRTHS <- USBIRTHS
SWBDAYS <- SWBDAYS
CEOBDAYS <- CEOBDAYS

#对数据进行回归拟合
Reg<-lm(formula = SWBDAYS~USBIRTHS, data = L7E10)
summary (Reg)

Reg2<-lm(formula = SWBDAYS~CEOBDAYS, data = L7E10)
summary (Reg2)
