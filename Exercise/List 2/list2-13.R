rm=(list=ls())
library(mosaic)
library(readxl)
L2E13 <- read_excel("D:/IM课程/Moodle 1.3/Exercises Excel files-20201118/Lecture 2/L2E13.xlsx")
View(L2E13)
attach(L2E13)
DAY <- DAY
BBL <- BBL
barplot(BBL)
