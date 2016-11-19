household <- read.table("household_power_consumption.txt", header = T, sep = ";", na.strings = "?")

date <- household[household$Date%in% c("1/2/2007", "2/2/2007"),]

setDate <- strptime(paste(date$Date, date$Time , sep = " "), "%d/%m/%y  %H:%M:%S")

date <- cbind(setDate, date) 
# making the plot.

plot(finalData$SetTime, finalData$Sub_metering_1, pch = "1", col= "black", xlab="", ylab="Energy sub metering")
lines(finalData$SetTime, finalData$Sub_metering_2, col= "red")
lines(finalData$SetTime, finalData$Sub_metering_3, col= "blue")
legend("topright", legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), col= c("black", "red", "blue"), lty="solid")