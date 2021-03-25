rm=(list=ls())
library(mosaic)
library(readxl)
L8E7 <- read_excel("D:/IM课程/Moodle 1.3/Exercises Excel files-20201118/Lecture 9/L8E7.xlsx")
View(L8E7)
attach(L8E7)
Income <- Income
Agree <- Agree
Gender <- Gender
reg <- lm(formula = Income~Agree+Gender+Agree*Gender,data = L8E7)
summary(reg)
