rm=(list=ls())
library(mosaic)
library(readxl)
L2E11 <- read_excel("D:/IM课程/Moodle 1.3/Exercises Excel files-20201118/Lecture 2/L2E11.xlsx")
View(L2E11)
attach(L2E11)
Agency <- Agency
Year1 <- Year1
Year2 <- Year2
#绘制散点图 
xyplot(Year2 ~ Year1, data=L2E11)
xyplot(Year2 ~ Year1,type=c("p","smooth"),data=L2E11)
