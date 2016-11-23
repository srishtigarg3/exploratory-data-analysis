data <- read.table("C:/Users/Srishti/Desktop/household_power_consumption.txt", header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
subdata <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]
datetime <- strptime(paste(subdata$Date, subdata$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
globalap <- as.numeric(subdata$Global_active_power)

png("plot2.png")
plot(datetime, globalap, xlab="", ylab="Global Active Power (kilowatts)", type="l")
dev.off()