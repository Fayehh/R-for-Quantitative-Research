rm=(list=ls())
library(mosaic)
library(readxl)
L6E4 <- read_excel("D:/IM课程/Moodle 1.3/Exercises Excel files-20201118/Lecture 6/L6E4.xlsx")
View(L6E4)
attach(L6E4)
CIRCUIT <- CIRCUIT
STANDARD <- STANDARD
HUFFMAN <- HUFFMAN
t.test(STANDARD, HUFFMAN, paired = TRUE, alternative = "two.sided", conf.level = 0.95)
#有95%的把握两者的difference在(0.03642781 0.22357219),都是正数不包含0，所以后者均值小