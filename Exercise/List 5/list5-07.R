rm=(list=ls())
library(mosaic)
library(readxl)
L4E10 <- read_excel("D:/IM课程/Moodle 1.3/Exercises Excel files-20201118/Lecture 4/L4E10.xlsx")
View(L4E10)
attach(L4E10)
Sample <- Sample
Not_Like <-  dplyr::filter(L4E10, Sample =='0')
View(Not_Like)
p <- length(Not_Like$Sample)/length(L4E10$Sample)
p
#满足大样本条件，计算检验统计量
(p-0.5)/sqrt(0.5*0.5/length(L4E10$Sample))

#查表，z_1.13 = 0.3708
p_value <- 0.50-0.3708
p_value
