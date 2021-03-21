rm=(list=ls())
library(mosaic)
library(readxl)
L3E6 <- read_excel("D:/IM课程/Moodle 1.3/Exercises Excel files-20201118/Lecture 3/L3E6.xlsx")
View(L3E6)
attach(L3E6)
FailTime <- FailTime
Withdrawal <- Withdrawal

#验证正态分布
favstats(FailTime)

#方法1. 图形感受法：建立直方图或者枝干图，看图像的形状是否类似正态曲线，既土墩形或者钟形，并且两端对称。
hist(FailTime, col="grey")
#方法2. 计算区间，看落在区间的百分百是否近似于68%，95%，100%。
#经验法则，验证一个标准差范围
mean(FailTime)+sd(FailTime)
mean(FailTime)-sd(FailTime)
INT1 <- dplyr::filter(L3E6, FailTime> 1.006 & FailTime <2.86)
INT1#可以发现，经过筛选，有33个值落在一个标准差范围内（66%）
mean(FailTime)+2*sd(FailTime)
mean(FailTime)-2*sd(FailTime)
INT2 <- dplyr::filter(L3E6, FailTime> 0.07769 & FailTime <3.792302)
INT2#49个（98%）
mean(FailTime)+3*sd(FailTime)
mean(FailTime)-3*sd(FailTime)
INT3 <- dplyr::filter(L3E6, FailTime> -0.8509533 & FailTime <4.7209533)
INT3#50个（100%）
#方法3. 求IQR和标准差s，计算IQR/s，如若是正态分布，则IQR/s≈1.3
IQR(FailTime)/sd(FailTime)
#This method indicates the data may be or could be normal

#方法4. Jargue-Bera test计算峰度（3）和偏度（0）峰度和偏度.p值远大于0.05，所以和正态分布没有显著差异
jarqueberaTest(FailTime)

#方法5：峰度==3? 偏度==0
library(fBasics)
kurtosis(FailTime) 
skewness(FailTime)

#方法6：比较均值==众数==中位数,注意mode众数不能直接得到，需要用函数c
mean(FailTime)
median(FailTime)
getmode <- function(v) {
  uniqv <- unique(v)
  uniqv[which.max(tabulate(match(v, uniqv)))]
}
mode <- getmode(FailTime)
mode
# 方法7：后续还涉及到了QQ图