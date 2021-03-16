rm=(list=ls())
library(mosaic)
library(readxl)
L1E2 <- read_excel("D:/IM课程/Moodle 1.3/Exercises Excel files-20201118/Lecture 1/L1E2.xlsx")
View(L1E2)
attach(L1E2)
Rank <- Rank
Team <- Team
Value <- Value
Chang1Yr <- Chang1Yr
Debt_Value <- Debt_Value
Revenue <- Revenue
Income <- Income

gf_histogram(~Value,data = L1E2)
gf_histogram(~Chang1Yr,data=L1E2)
gf_histogram(~Debt_Value,data=L1E2)
gf_histogram(~Revenue,data=L1E2)
gf_histogram(~Income,data=L1E2)
