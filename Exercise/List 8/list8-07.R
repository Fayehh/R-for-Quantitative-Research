rm=(list=ls())
library(mosaic)
library(readxl)
L7E7 <- read_excel("D:/IM课程/Moodle 1.3/Exercises Excel files-20201118/Lecture 8/L7E7.xlsx")
View(L7E7)
attach(L7E7)
Run <- Run
Sweetness_Index <- Sweetness_Index
Pectin_ppm <- Pectin_ppm

anova(lm(Sweetness_Index~Pectin_ppm, L7E7))
      
