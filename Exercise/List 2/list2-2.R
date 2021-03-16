rm=(list=ls())
library(mosaic)
library(readxl)
L2E2 <- read_excel("D:/IM课程/Moodle 1.3/Exercises Excel files-20201118/Lecture 2/L2E2.xlsx")
View(L2E2)
attach(L2E2)
Support <- Support

#range极差
range(Support)
#方差
var(Support)
