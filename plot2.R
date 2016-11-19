household <- read.table("household_power_consumption.txt", header = T, sep = ";" , na.strings = "?")

date <- household[household$Date %in% c("1/2/2007", "2/2/2007"),]

setDate <- strptime(paste(date$Date, date$Time , sep = " "), "%d/%m/%y  %H:%M:%S")

date <- cbind(setDate, date)
plot(date$SetDate, date$Global_active_power, pch="l", col="black", xlab="", ylab="Global Active Power (kilowatts)")