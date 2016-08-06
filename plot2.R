windows()

plot(dataset$Time,dataset$Global_active_power,type= "l",xlab = "",ylab="Global Active Power (kilowatts)")

dev.copy(png,'./data/plot2.png')

dev.off()