rm=(list=ls())
library(mosaic)
library(readxl)
L5E6 <- read_excel("D:/IM课程/Moodle 1.3/Exercises Excel files-20201118/Lecture 5/L5E6.xlsx")
View(L5E6)
attach(L5E6)
STATE <- STATE
PLANTS <- PLANTS
#小样本，计算t统计量，自由度19
(mean(PLANTS)-3)/(sd(PLANTS)/sqrt(20))
#(t=1.452966 > 1.328), H0 is rejected. There is sufficient evidence to indicate the mean number of active nuclear power plants operating in all states exceeds 3 at α = 0.10.

#(对比list5-04)小样本不适用中心极限定理，因此只有总体满足正态分布，样本抽样的抽样分布才能正态
#验证总体是否正态:

hist(PLANTS, col="grey")#形状不符合

IQR(PLANTS)/sd(PLANTS)#和1.3差距有点点大

qqnorm(PLANTS)
qqline(PLANTS)#QQ图拟合效果不好

library(fBasics)
jarqueberaTest(PLANTS)#p值比较小->接近拒绝域

mean(PLANTS)
median(PLANTS)
getmode <- function(v) {
  uniqv <- unique(v)
  uniqv[which.max(tabulate(match(v, uniqv)))]
}
mode <- getmode(PLANTS)
mode
#均值、中位数、众数差太多，不符合正态假设

#question c
NEW_L5E6 <- dplyr::filter(L5E6, STATE !="Illinois" & STATE!="Penn" & STATE !="Kansas" & STATE !="Mass")
NEW_L5E6
new_t <- (mean(NEW_L5E6$PLANTS)-3)/(sd(NEW_L5E6$PLANTS)/sqrt(length(NEW_L5E6$PLANTS)))
new_t
#没有足够证据拒绝原假设.It is very dangerous to eliminate data points to satisfy assumptions.