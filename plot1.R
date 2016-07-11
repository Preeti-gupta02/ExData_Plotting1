a<-read.table("household_power_consumption.txt",header = TRUE,sep=";")
glob<-a$Global_active_power[a$Date=="1/2/2007"|a$Date=="2/2/2007"]
dates<-a$Date[a$Date=="1/2/2007"|a$Date=="2/2/2007"]
global<-as.numeric(as.character(glob))
png(file="plot1.png")
hist(global,col="red",main="Global Active Power",xlab = "Global Active Power(kilowatts)")
dev.off()
