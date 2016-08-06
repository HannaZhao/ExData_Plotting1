plot(dataset$Time,dataset$Sub_metering_1,type="l",ylab="Energy sub metering")

lines(dataset$Time,dataset$Sub_metering_2,col="red")

lines(dataset$Time,dataset$Sub_metering_3,col="blue")

legend("topright",pch=1,col=c("black","blue","red"), legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))

dev.copy(png,'./data/plot3.png')

dev.off()