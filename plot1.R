
fileURL<-"https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip";
Des<-"./EPC_data.zip"
download.file(fileURL,destfile = Des)

if(!file.exists("./data")) {dir.create("./data")}

unzip(zipfile=Des,exdir = "./data")

Des<-"./data/household_power_consumption.txt"

dataset<-read.table(Des,header=True,sep=";",na.strings = "?",stringsAsFactors =FALSE);

dataset$Date<-as.Date(dataset$Date,"%d/%m/%Y")

dataset<-subset(dataset,Date>=as.Date("2007-02-01")&Date<=as.Date("2007-02-02"))

dataset$Time<-strptime(paste(as.character(dataset$Date),dataset$Time), "%Y-%m-%d %H:%M:%S")

windows()
hist(dataset$Global_active_power,col = "red",main = "Global Active Power", xlab = "Global Active Power (kilowatts)")
dev.copy(png,'./data/plot1.png')
dev.off()