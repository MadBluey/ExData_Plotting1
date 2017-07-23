data <- read.table("household_power_consumption.txt",na.strings = "?", header = TRUE, sep = ";")
data$Date2 <- as.Date(data$Date,format("%d/%m/%Y"))

data2 <- subset(data,data$Date2 >= "2007-02-01" & data$Date2 <= "2007-02-02" )

png(file = "plot3.png")
# plot 3 
data2$dateTime <- strptime(paste(data2$Date,data2$Time),"%d/%m/%Y %H:%M:00")
with(data2,plot(dateTime,Sub_metering_1,type = "l", xlab = "",ylab = "Energy sub meeting"))
with(data2,lines(dateTime,Sub_metering_2, col = "red" ,xlab = "",ylab = "Energy sub meeting"))
with(data2,lines(dateTime,Sub_metering_3,col = "blue" , xlab = "", ylab = "Energy sub meeting"))
legend("topright",col = c("black","red","blue"), legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),lwd=c(2.5,2.5))

dev.off()