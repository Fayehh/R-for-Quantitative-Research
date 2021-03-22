rm=(list=ls())
library(mosaic)
library(readxl)
L7E5 <- read_excel("D:/IM课程/Moodle 1.3/Exercises Excel files-20201118/Lecture 8/L7E5.xlsx")
View(L7E5)
attach(L7E5)
School <- School
Enrollment <- Enrollment
Tuition_Dollar <- Tuition_Dollar
GMAT <- GMAT
JobOffer_Percent <- JobOffer_Percent
Salary_Dollar <- Salary_Dollar

Reg <- lm(Salary_Dollar ~ GMAT,data = L7E5)
summary(Reg)
