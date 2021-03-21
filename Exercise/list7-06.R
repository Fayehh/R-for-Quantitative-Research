rm(list = ls())
library(mosaic)
library(readxl)
L9E6 <- read_excel("IM_Course/2020 Autumn Semester/Module1.3 Research Method/Quantitative/Exercises Excel files-20201115/Lecture 7/L9E6.xlsx")
View(L9E6)
attach(L9E6)

HOUSING <- HOUSING
THICKNESS <- THICKNESS 
OVERRUN <- OVERRUN 
STRENGTH <- STRENGTH 
WTCLASS <- WTCLASS

# 判断数据类型
is.character(HOUSING)
is.character(WTCLASS)
is.numeric(OVERRUN)

# 进行方差分析
summary(aov(OVERRUN~HOUSING+WTCLASS+HOUSING*WTCLASS))
# 通过这个结果，可以得到HOUSING和WTCLASS之间是没有显著的交互作用的
# 通过结果分析，HOUSING种类的不同对OVERRUN是有显著影响的，WTCLASS则没有
