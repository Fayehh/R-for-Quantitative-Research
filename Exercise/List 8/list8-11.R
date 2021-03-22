remove=(list=ls())
library(mosaic)
library(readxl)
L7E11 <- read_excel("D:/IM课程/Moodle 1.3/Exercises Excel files-20201118/Lecture 8/L7E11.xlsx")
View(L7E11)
attach(L7E11)

School <- School
Enrollment <- Enrollment
Tuition_Dollar <- Tuition_Dollar
GMAT <- GMAT
JobOffer_Percent <- JobOffer_Percent
Salary_Dollar <- Salary_Dollar

Reg <- lm(JobOffer_Percent~Tuition_Dollar,data = L7E11)
summary(Reg)
