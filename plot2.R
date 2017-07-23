data <- read.table("household_power_consumption.txt",na.strings = "?", header = TRUE, sep = ";")
data$Date2 <- as.Date(data$Date,format("%d/%m/%Y"))

data2 <- subset(data,data$Date2 >= "2007-02-01" & data$Date2 <= "2007-02-02" )

png(file = "plot2.png")
# plot 2
data2$dateTime <- strptime(paste(data2$Date,data2$Time),"%d/%m/%Y %H:%M:00")
plot(data2$dateTime,data2$Global_active_power, type = "l", xlab = "", ylab = "Global Active Power (kilowatts)")

dev.off()