
# Plot2

setwd("C:/_Proyectos/Coursera/R/Exploratory Data Analysis/Week 1/Project 1/ExData_Plotting1")

dat <- read.table("household_power_consumption.txt",header=T,sep=";")

subdat <- dat[(dat$Date=="1/2/2007" | dat$Date=="2/2/2007" ), ]

datetime <- paste(subdat$Date, subdat$Time)

subdat$Datetime <- as.POSIXct(datetime,format="%d/%m/%Y %H:%M:%S")

#Graphic

plot(x=(subdat$Datetime),y=subdat$Global_active_power,type="l",ylab="Global Active Power (kilowatts)",xlab="")

dev.copy(png, file="plot2.png", height=480, width=480)
dev.off()
