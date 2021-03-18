rm=(list=ls())
library(mosaic)
library(readxl)
L2E17 <- read_excel("D:/IM课程/Moodle 1.3/Exercises Excel files-20201118/Lecture 2/L2E17.xlsx")
View(L2E17)
attach(L2E17)
Spillage <- Spillage
Cause <- Cause
COLLISION <- filter(L2E17, Cause =="Collision")
FIRE <- filter(L2E17, Cause =="Fire")
GROUNDING <- filter(L2E17, Cause =="Grounding")
HULLFAIL <- filter(L2E17, Cause =="HullFail")
UNKNOWN <- filter(L2E17, Cause =="Unknown")
NEW_DATA <- c(length(COLLISION$Spillage), 
              length(FIRE$Spillage),length(GROUNDING$Spillage),length(HULLFAIL$Spillage),
              length(UNKNOWN$Spillage))

#通过条形图发现fire和grounding是最多的两个原因
barplot(NEW_DATA,xlab="Causes", ylab="Spillage",col="grey", main="Barplot", 
        border="black", names.arg = c("Collision", "Fire", "Grounding", "Hullfail", 
                                      "Unknown"))
 #描述性统计
favstats(Spillage)
#非对称数据不适用经验法则，利用切比雪夫定律寻找包含大多数数据的区间
Chebyshev_rule_pos <- (mean(L2E17$Spillage)+(3*sd(L2E17$Spillage)))
Chebyshev_rule_pos
Chebyshev_rule1_neg <- (mean(L2E17$Spillage)-(3*sd(L2E17$Spillage)))
Chebyshev_rule1_neg
