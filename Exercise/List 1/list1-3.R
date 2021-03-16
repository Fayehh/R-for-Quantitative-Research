rm=(list=ls())
library(mosaic)
library(readxl)
L1E3A <- read_excel("D:/IM课程/Moodle 1.3/Exercises Excel files-20201118/Lecture 1/L1E3A.xlsx")
View(L1E3A)
attach(L1E3A)
NUMBER <- NUMBER
WHEN <- WHEN
#过滤数据
ARRIVE1 <- dplyr::filter(L1E3A, WHEN=="ARRIVE")
DEPART1 <- dplyr::filter(L1E3A, WHEN=="DEPART")
stripchart(ARRIVE1$NUMBER, col="black", main="The number of Arrivals")
stripchart(DEPART1$NUMBER, col="black", main="The number of Departures")
