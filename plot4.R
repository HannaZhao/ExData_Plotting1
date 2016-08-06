par(mfcol=c(2,2))

plot(dataset$Time,dataset$Global_active_power,type= "l",xlab = "",ylab="Global Active Power (kilowatts)")
  
plot(dataset$Time,dataset$Sub_metering_1,type="l",ylab="Energy sub metering")
lines(dataset$Time,dataset$Sub_metering_2,col="red")
lines(dataset$Time,dataset$Sub_metering_3,col="blue")
legend("topright",pch=1,col=c("black","blue","red"), legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))

plot(dataset$Time,dataset$Voltage,xlab = "datatime",ylab = "Voltage", type="l")
  
plot(dataset$Time,dataset$Global_reactive_power,xlab = "datatime",ylab = "Global_reactive_power",type="l")

dev.copy(png,'./data/plot4.png')

dev.off()

