rm=(list=ls())
library(mosaic)
library(readxl)
L4E5 <- read_excel("D:/IM课程/Moodle 1.3/Exercises Excel files-20201118/Lecture 4/L4E5.xls")
View(L4E5)
attach(L4E5)

INTTIME <- INTTIME
histogram(~INTTIME,data=L4E5)
hist(INTTIME)
mean(INTTIME)
sd(INTTIME)
favstats(INTTIME)

#rep(x,n)令x的值重复n次
sample_means <- rep(NA, 100)
sample_means
for(i in 1:100){
  samp <- sample(L4E5$INTTIME, 40)#从数据INTTIME里进行随机抽样，样本size=40
  sample_means[i] <- mean(samp)
}
hist(sample_means)
favstats(sample_means)
favstats(L4E5$INTTIME)
91.53912/sqrt(40)
