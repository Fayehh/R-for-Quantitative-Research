rm=(list=ls())
library(mosaic)
library(fBasics)
library(readxl)
L3E7 <- read_excel("D:/IM课程/Moodle 1.3/Exercises Excel files-20201118/Lecture 3/L3E7.xlsx")
View(L3E7)
attach(L3E7)
Ship_Name <- Ship_Name
Cruise_Line <- Cruise_Line
Score <- Score
#检验正态性，方法1：作图
gf_histogram( ~ Score, data = L3E7)
#方法2：标准差区间检验正态性
mean(Score)+sd(Score)
mean(Score)-sd(Score)
sd1 <- dplyr::filter(L3E7, Score<100.6621 & Score > 90.7357)
sd1#可以发现，经过筛选，有166个值落在一个标准差范围内（89.2%），高于65%太多了
mean(Score)+2*sd(Score)
mean(Score)-2*sd(Score)
sd2 <- dplyr::filter(L3E7, Score<105.6253 & Score > 85.77256)
sd2#可以发现，经过筛选，有179个值落在一个标准差范围内（96.2365%）
mean(Score)+3*sd(Score)
mean(Score)-3*sd(Score)
sd3 <- dplyr::filter(L3E7, Score<110.5885 & Score > 80.80937)
sd3#可以发现，经过筛选，有182个值落在一个标准差范围内（97.8%）
#方法3：峰度==3,偏度==0
kurtosis(Score)
skewness(Score)
#方法4：jarqueberaTest
jarqueberaTest(Score)
#p-value is smaller than 0.10(拒绝原假设), therefore we conclude that the skewness and kurtosis of the Score is significantly different from the skewness and kurtosis of normal distribution.

#方法5：比较IQR/sd和1.3
IQR(Score)/sd(Score)

#方法6：比较均值==众数==中位数,注意mode众数不能直接得到，需要用函数c
mean(Score)
median(Score)
getmode <- function(v) {
  uniqv <- unique(v)
  uniqv[which.max(tabulate(match(v, uniqv)))]
}
mode <- getmode(Score)
mode
