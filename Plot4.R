
# Plot4

setwd("C:/_Proyectos/Coursera/R/Exploratory Data Analysis/Week 1/Project 1/ExData_Plotting1")

dat <- read.table("household_power_consumption.txt",header=T,sep=";")

subdat <- dat[(dat$Date=="1/2/2007" | dat$Date=="2/2/2007" ), ]

datetime <- paste(subdat$Date, subdat$Time)

subdat$Datetime <- as.POSIXct(datetime,format="%d/%m/%Y %H:%M:%S")

#Graphic

par(mfrow=c(2,2))

plot(x=(subdat$Datetime),y=subdat$Global_active_power,type="l",ylab="Global Active Power (kilowatts)",xlab="")

plot(x=(subdat$Datetime),y=subdat$Voltage,type="l",ylab="Voltage",xlab="datetime")

plot(x=(subdat$Datetime),y=subdat$Sub_metering_1,type="l",ylab="Energy sub metering",xlab="")
lines(x=(subdat$Datetime),y=subdat$Sub_metering_2,col="red")
lines(x=(subdat$Datetime),y=subdat$Sub_metering_3,col="blue")
legend("topright",c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),bty="l",col=c("black","red","blue"),lwd=2,cex=0.7)

plot(subdat$Datetime, subdat$Global_reactive_power, type = "l", main = "", xlab = "datetime")

dev.copy(png, file="plot4.png", height=480, width=480)
dev.off()
