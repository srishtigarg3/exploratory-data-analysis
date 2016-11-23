data <- read.table("C:/Users/Srishti/Desktop/household_power_consumption.txt", header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
subdata <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]
datetime <- strptime(paste(subdata$Date, subdata$Time, sep=" "), "%d/%m/%Y %H:%M:%S")

png("plot3.png")
plot(datetime,c(subdata$Sub_metering_1),col="black", type="l",xlab="",ylab="Energy sub metering")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1, lwd=2.5, col=c("black", "red", "blue"))
lines(datetime,c(subdata$Sub_metering_2),col="red", type="l")
lines(datetime,c(subdata$Sub_metering_3),col="blue", type="l")
dev.off()