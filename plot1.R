household <- read.table("household_power_consumption.txt", header = T, sep = ";" , na.strings = "?")

date <- household[household$Date %in% c("1/2/2007", "2/2/2007"),]

setDate <- strptime(paste(date$Date, date$Time , sep = " "), "%d/%m/%y  %H:%M:%S")

date <- cbind(setDate, date)

hist(date$Global_active_power, col = "red", main = "Global Active Power", xlab = "Global Active Power (killowatts)")
