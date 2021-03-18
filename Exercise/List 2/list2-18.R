rm=(list=ls())
library(mosaic)
library(readxl)
L2E18 <- read_excel("D:/IM课程/Moodle 1.3/Exercises Excel files-20201118/Lecture 2/L2E18.xlsx")
View(L2E18)
attach(L2E18)
REQUEST <- L2E18$REQUEST
MARKET <- L2E18$MARKET
ENGINEER <- L2E18$ENGINEER
ACCOUNT <- L2E18$ACCOUNT
LOST <- L2E18$LOST
#cbind合并列数据；rbind合并行数据
New_Data <- cbind(x1=MARKET, x2=ENGINEER, x3=ACCOUNT)
New_Data
Total <- rowSums (New_Data, na.rm = FALSE, dims = 1)#对每一行数据进行求和
Total

stem(MARKET)
stem(ACCOUNT)
stem(ENGINEER)
stem(Total)

#计算zscore
M <- (6.5-mean(MARKET))/sd(MARKET)
E <-  (7-mean(ENGINEER))/sd(ENGINEER)
A <-  (8.5-mean(ACCOUNT))/sd(ACCOUNT)
To <-  (17-mean(Total))/sd(Total)


       