a<-read.table("household_power_consumption.txt",header = TRUE,sep=";")
sub_1<-a$Sub_metering_1[a$Date=="1/2/2007"|a$Date=="2/2/2007"]
sub_2<-a$Sub_metering_2[a$Date=="1/2/2007"|a$Date=="2/2/2007"]
sub_3<-a$Sub_metering_3[a$Date=="1/2/2007"|a$Date=="2/2/2007"]
su1<-as.numeric(as.character(sub_1))
su2<-as.numeric(as.character(sub_2))
su3<-as.numeric(as.character(sub_3))
ymax<-max(su1)
png(file="plot3.png")
plot(su1,type = "l", col="black",ylim=c(0,ymax),xaxt="n",xlab = "",ylab = "Energy sub metering")
par(new=TRUE)
plot(su2,type = "l", col="red",ylim=c(0,ymax),xaxt="n",xlab = "",ylab = "Energy sub metering")
par(new=TRUE)
plot(su3,type = "l", col="blue",ylim=c(0,ymax),xaxt="n",xlab = "",ylab = "Energy sub metering")
v1 <- c(0,1440,2880)
v2<-c("Thu","Fri","Sat")
axis(side = 1,at = v1,labels = v2,tck=-.02,font = 1,cex.axis = 1)
legend("topright",lty=c(1,1,1),lwd=c(1,1,1),col=c("black","red","blue"),
       legend=c("sub_metering_1","sub_metering_2","sub_metering_3"),cex=1)
dev.off()
