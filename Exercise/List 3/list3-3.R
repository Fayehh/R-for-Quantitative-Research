#利用R计算正态分布
rm=(rs=list())
library(mosaic)
#x<= -3的概率
xpnorm(-3, mean=0, sd=3)
#第二问不考虑12
xpnorm(-9, mean=0, sd=3)*2
#考虑12
(xpnorm(-9, mean=0, sd=3)-xpnorm(-12, mean=0, sd=3))*2
