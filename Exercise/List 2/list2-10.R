rm=(list=ls())
library(mosaic)
library(readxl)
L2E10 <- read_excel("D:/IM课程/Moodle 1.3/Exercises Excel files-20201118/Lecture 2/L2E10.xlsx")
View(L2E10)
attach(L2E10)
Ship_Name <- Ship_Name
Cruise_Line <- Cruise_Line
Score <- Score

boxplot(Score, ylab='Score', main='Boxplot Score')
boxplot.stats(Score)
#for循环遍历整列
for (i in 1:length(Score))
{Z_score[i] <- (Score[i]-mean(Score))/sd(Score)
if (abs(Z_score[i])>3) #z分数大于3算作异常值
  print(Score[i])
}
