data <- read.table("C:/Users/Srishti/Desktop/household_power_consumption.txt", header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
subdata <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]
globalap <- as.numeric(subdata$Global_active_power)

png("plot1.png")
hist(globalap, col="red", xlab="Global Active Power (kilowatts)", main= "Global Active Power")
dev.off()