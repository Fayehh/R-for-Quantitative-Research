rm=(list=ls())
library(mosaic)
library(readxl)
L1E5 <- read_excel("D:/IM课程/Moodle 1.3/Exercises Excel files-20201118/Lecture 1/L1E5.xlsx")
View(L1E5)
attach(L1E5)
Dioxide <- Dioxide
Oil <- Oil
#中位数和均值
mean(Dioxide)
median(Dioxide)
#众数不能直接求
getmode <- function(v) {
  uniqv <- unique(v)
  uniqv[which.max(tabulate(match(v, uniqv)))]
}
mode <- getmode(Dioxide)
print(mode)
#过滤后求中位数
median(filter(L1E5, Oil == "No")$Dioxide)
median(filter(L1E5, Oil == "Yes")$Dioxide)
