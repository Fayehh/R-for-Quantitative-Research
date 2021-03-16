rm=(list=ls())
library(mosaic)
library(readxl)
L2E6 <- read_excel("D:/IM课程/Moodle 1.3/Exercises Excel files-20201118/Lecture 2/L2E6.xlsx")
View(L2E6)
attach(L2E6)
Support <- Support
z_score <- (155-mean(Support))/sd(Support)
z_score
#极端值，not typical