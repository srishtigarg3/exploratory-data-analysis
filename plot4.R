data <- read.table("C:/Users/Srishti/Desktop/household_power_consumption.txt", header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
subdata <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]
globalap <- as.numeric(subdata$Global_active_power)
datetime <- strptime(paste(subdata$Date, subdata$Time, sep=" "), "%d/%m/%Y %H:%M:%S")

png("plot4.png", width=480, height=480)

par(mfrow=c(2,2))
#first plot
plot(datetime, globalap, xlab="", ylab="Global Active Power (kilowatts)", type="l")
#second plot
plot(datetime, subdata$Voltage, ylab="Voltage", type="l")
#third plot
plot(datetime,c(subdata$Sub_metering_1),col="black", type="l",xlab="",ylab="Energy sub metering")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=, lwd=0.5, col=c("black", "red", "blue"))
lines(datetime,c(subdata$Sub_metering_2),col="red", type="l")
lines(datetime,c(subdata$Sub_metering_3),col="blue", type="l")
#fourth plot
plot(datetime, subdata$Global_reactive_power, ylab="Global_reactive)_power", type="l")

dev.off()