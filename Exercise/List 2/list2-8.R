rm=(list=ls())
library(mosaic)
library(fasti)
library(readxl)
L2E8 <- read_excel("D:/IM课程/Moodle 1.3/Exercises Excel files-20201118/Lecture 2/L2E8.xlsx")
View(L2E8)
attach(L2E8)
School <- School
Rank <- Rank
ZScore <- ZScore
TopField <- TopField
hist(ZScore) #右偏
