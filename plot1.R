data <- read.table("household_power_consumption.txt",na.strings = "?", header = TRUE, sep = ";")
data$Date2 <- as.Date(data$Date,format("%d/%m/%Y"))

data2 <- subset(data,data$Date2 >= "2007-02-01" & data$Date2 <= "2007-02-02" )

png(file = "plot1.png")
# plot 1 
hist(data2$Global_active_power, col = "red", xlab = "Global Active Power (kilowatts)", main = "Global Active Power")

dev.off()