rm=(list=ls())
library(mosaic)
#dbinom()给出概率密度分布，所以要把大于等于3的离散概率累加起来
sum(dbinom(3:10,10,.09))
#或者可以用：
1-pbinom(2,10,0.09)
#x是数字的向量。p是概率向量。n是观察的数量。size是试验的数量。prob是每个试验成功的概率。
# Probability of getting 26 or less heads from a 51 tosses of a coin.
x <- pbinom(26,51,0.5)