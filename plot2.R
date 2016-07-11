a<-read.table("household_power_consumption.txt",header = TRUE,sep=";")
glob<-a$Global_active_power[a$Date=="1/2/2007"|a$Date=="2/2/2007"]
global<-as.numeric(as.character(glob))
png(file="plot2.png")
plot(global,type = "l",xlab = "",ylab = "Global Active Power (kilowatts)",xaxt="n",cex.lab=1)
v1 <- c(0,1440,2880)
v2<-c("Thu","Fri","Sat")
axis(side = 1,at = v1,labels = v2,tck=-.02,font = 1,cex.axis = 1)
dev.off()