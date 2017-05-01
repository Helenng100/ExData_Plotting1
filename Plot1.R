
# Plot1

setwd("C:/_Proyectos/Coursera/R/Exploratory Data Analysis/Week 1/Project 1/ExData_Plotting1")

dat <- read.table("household_power_consumption.txt",header=T,sep=";")

subdat <- dat[(dat$Date=="1/2/2007" | dat$Date=="2/2/2007" ), ]

#Graphic

hist(subdat$Global_active_power, main="Global Active Power", xlab="Global Active Power (kilowatts)", ylab="Frequency", col="Red", cex.sub=0.8)

dev.copy(png, file="plot1.png", height=480, width=480)
dev.off()

