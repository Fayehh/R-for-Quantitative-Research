rm=(list=ls())
library(mosaic)
library(readxl)
L2E9 <- read_excel("D:/IM课程/Moodle 1.3/Exercises Excel files-20201118/Lecture 2/L2E9.xlsx")
View(L2E9)
attach(L2E9)
PLAN <- PLAN
TIME <- TIME
JOINT <- dplyr::filter(L2E9, PLAN == "JOINT")
NONE <- dplyr::filter(L2E9, PLAN == "NONE")
PREPACK <- dplyr::filter(L2E9, PLAN == "PREPACK")
#View(JOINT)
#class(JOINT)
boxplot(JOINT$TIME, ylab='Time', main='Boxplot Joint')
boxplot(NONE$TIME, ylab='Time', main='Boxplot NONE')
boxplot(PREPACK$TIME, ylab='Time', main='Boxplot PREPACK')

median(JOINT$TIME)
median(NONE$TIME)
median(PREPACK$TIME)

boxplot.stats(TIME[PLAN=="JOINT"])
#$stats五个值为，箱线图下虚线，Q1，中位数，Q3，上虚线。$n返回样本量，$conf返回置信区间，默认是95的置信区间。$out返回离群值。
range_J <- 5.4-1.2
InterQ_J <- 4.2-1.4
boxplot.stats(TIME[PLAN=="NONE"])
range_N <- 4.2-2.4
InterQ_N <- 4.15-2.75
boxplot.stats(TIME[PLAN=="PREPACK"])
range_P <- 3.0-1.0
InterQ_N <- 2.0-1.2

sd_J <- sd(JOINT$TIME)
sd_N <- sd(NONE$TIME)
sd_P <- sd(PREPACK$TIME)

