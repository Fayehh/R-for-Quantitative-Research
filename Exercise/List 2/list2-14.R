rm=(list=ls())
library(mosaic)
library(readxl)
L2E14 <- read_excel("D:/IM课程/Moodle 1.3/Exercises Excel files-20201118/Lecture 2/L2E14.xlsx")
View(L2E14)
attach(L2E14)
Measurement_Class <- Measurement_Class
Relative_frequency <- Relative_frequency
barplot(Relative_frequency,xlab="Measurement", ylab="Relative frequency",col="grey", main="Histogram of Class", border="black", names.arg = Measurement_Class)