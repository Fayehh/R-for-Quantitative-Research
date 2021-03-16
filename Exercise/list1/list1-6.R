rm=(list=ls())
library(mosaic)
library(fBasics)
library(readxl)
L1E6 <- read_excel("D:/IM课程/Moodle 1.3/Exercises Excel files-20201118/Lecture 1/L1E6.xlsx")
View(L1E6)
attach(L1E6)
PLAYER <- PLAYER
DISTANCE <- DISTANCE
ACCURACY <- ACCURACY
INDEX <- INDEX

mean(INDEX)
median(INDEX)
#或者直接使用描述性统计函数
favstats(INDEX)
getmode <- function(v) {
  uniqv <- unique(v)
  uniqv[which.max(tabulate(match(v, uniqv)))]
}
mode <- getmode(INDEX)
print(mode)

#skewness偏度
hist(INDEX)
skewness(INDEX)
#验证，偏度>0，右偏