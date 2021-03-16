rm(list=ls())#clean your screen
library(mosaic)
library(readxl)
L1E1 <- read_excel("D:/IM课程/Moodle 1.3/Exercises Excel files-20201118/Lecture 1/L1E1.xlsx")
View(L1E1)
attach(L1E1)

#create variables
Ship <- Ship
Cruise <- Cruise
Score <- Score

stem(Score,scale=2)
gf_histogram( ~ Score, data = L1E1) 
