rm=(list=ls())
library(mosaic)
library(readxl)
L4E6 <- read_excel("D:/IM课程/Moodle 1.3/Exercises Excel files-20201118/Lecture 4/L4E6.xlsx")
View(L4E6)
attach(L4E6)
raw <- RAW

confint(raw,level = 0.95)

mean(raw)
sd_pop=sd(raw)/sqrt(38)
t.test(raw,conf.level = 0.95)
(5.5-mean(raw))/sd_pop
