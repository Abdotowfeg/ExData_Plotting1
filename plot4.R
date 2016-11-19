household <- read.table("household_power_consumption.txt", header = T, sep = ";", na.strings = "?")

date <- household[household$Date%in% c("1/2/2007", "2/2/2007"),]

setDate <- strptime(paste(date$Date, date$Time , sep = " "), "%d/%m/%y  %H:%M:%S")

date <- cbind(setDate, date) 
# making the plot.

par(mfrow=c(2,2))
plot(date$SetDate, date$Global_active_power, pch="l", col="green", xlab="", ylab="Global Active Power")
plot(date$SetDate, date$Voltage, pch="l", col="orange", xlab="datetime", ylab="Voltage")
plot(date$SetDate, date$Sub_metering_1, pch="l", xlab="", ylab="Energy sub metering")
lines(date$SetDate, date$Sub_metering_2, pch="l", col="red")
lines(date$SetDate, date$Sub_metering_3, pch="l", col="blue")
legend("topright", bty="n", legend= c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), lty=1, col= c("black","red","blue"))
plot(date$setDate, date$Global_reactive_power, pch="l", col="blue", xlab="datetime", ylab="Global_reactive_power")