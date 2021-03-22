rm(list = ls())
library(mosaic)
library(readxl)
L9E4 <- read_excel("IM_Course/2020 Autumn Semester/Module1.3 Research Method/Quantitative/Exercises Excel files-20201115/Lecture 7/L9E4.xlsx")
View(L9E4)
attach(L9E4)

RATING <- RATING
RECALL <- RECALL 
FACTOR <- FACTOR
VIOLENT <- VIOLENT 
SEX <- SEX 
NEUTRAL <- NEUTRAL

# 通过箱形图查看是否存在outliers
boxplot(RECALL~RATING, main="Fig.-1: Boxplot of the three different types of ratings", col= rainbow(3))

# 找到具体的outliers
boxplot.stats(RECALL[RATING=="V"])

# 方差分析，这里保留了outliers（数的范围为0-7，outliers为7）
Model1 <- aov(RECALL~RATING)
summary(Model1)

# 这里得到的p值拒绝了均值全部相等原假设，通过TukeyHSD()函数来找出是差异
TukeyHSD(Model1, conf.level = 0.95)
# 通过可视化结果更直观的看出差异
plot(TukeyHSD(Model1, conf.level = 0.95),col='red', las=1)

# 另一种可视化方式，不过这种是直接通过看图判断均值的差异，解释性上不如方差分析的可视化结果
library(gplots)
plotmeans(RECALL~RATING, main="Fig.-2: Mean Plot with 95% Confidence Interval")



