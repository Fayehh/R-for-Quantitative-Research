rm(list = ls())
library(readxl)
L9E2 <- read_excel("IM_Course/2020 Autumn Semester/Module1.3 Research Method/Quantitative/Exercises Excel files-20201115/Lecture 7/L9E2.xlsx")
View(L9E2)
attach(L9E2)

RATING <- RATING
RECALL_ <- RECALL_
FACTOR <- FACTOR
VIOLENT <- VIOLENT
SEX <- SEX
NEUTRAL <- NEUTRAL

hist(VIOLENT)
hist(SEX)
hist(NEUTRAL)

VIOLENT1 <- na.omit(VIOLENT)
SEX1 <- na.omit(SEX)
NEUTRAL1 <- na.omit(NEUTRAL)

sd(VIOLENT1)
sd(SEX1)
sd(NEUTRAL1)

# Conclusion:The assumptions for ANOVA are that the data are approximately normal and the variance of the groups are the same. From the legend above, the standard deviations are 1.730, 1.664, and 1.811. These are all very similar. From the plots, the distribution of the neutral group is fairly normal, but the violent group and sex group are skewed to the right.