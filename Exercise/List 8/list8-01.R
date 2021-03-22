rm=(list=ls())

#通过两点画折线图
x_a<-c(0,4)#横轴的点
y_a<-c(2,6)#纵轴的点
plot(x_a, y_a, main="Scatterplot of y=4+x", xlab="x", ylab="y", type="o", col="blue")

x_b<-c(0,2)
y_b<-c(5,1)
plot(x_b, y_b, main="Scatterplot of y=5-2x", xlab="x", ylab="y", type="o", col="blue")

x_c<-c(0,2)
y_c<-c(-4,2)
plot(x_c, y_c, main="Scatterplot of y=-4+3x", xlab="x", ylab="y", type="o", col="blue")

x_d<-c(0,2)
y_d<-c(0,-4)
plot(x_d, y_d, main="Scatterplot of y=-2x", xlab="x", ylab="y", type="o", col="blue")

x_e<-c(0,2)
y_e<-c(0,2)
plot(x_e, y_e, main="Scatterplot of y=x", xlab="x", ylab="y", type="o", col="blue")

x_f<-c(0,2)
y_f<-c(.5,3.5)
plot(x_f, y_f, main="Scatterplot of y=0.50+1.5x", xlab="x", ylab="y", type="o", col="blue")

