data<-read.delim("household_power_consumption.txt",sep=";")
data$Date<-as.Date(as.character(data$Date),"%d/%m/%Y")
data<-data[data$Date>='2007-02-01'& data$Date<='2007-02-02',]
data$DateTime<-strptime(paste(data$Date,as.character(data$Time)),format="%Y-%m-%d %H:%M:%S")
data$Global_active_power<-as.numeric(as.character(data$Global_active_power))
#par(pin=c(5,5))
png(file="plot2.png",width=480, height=480)
with(data,plot(DateTime,Global_active_power,type="l",ylab="Global Active Power (kilowatts)",xlab=""))
dev.off()
