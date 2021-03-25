rm=(list=ls())
library(mosaic)
x_bar <- c(1,1.5,2,2.5,3,3.5,4,4.5,5)
px_bar <- c(.04,.12,.17,.20,.20,.14,.08,.04,.01)
DATA1A <- cbind(x_bar,px_bar)
library(readxl)
L4E1_DATA1 <- read_excel("D:/IM课程/Moodle 1.3/Exercises Excel files-20201118/Lecture 4/L4E1_DATA1.xlsx")
View(L4E1_DATA1)

barplot(px_bar, xlab="p(x_bar)",ylab="Frequency", 
        col="grey", main="Barplot for the sampling distribution", border="black")