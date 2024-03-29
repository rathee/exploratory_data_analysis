data_file <- "household_power_consumption.txt"

data <- read.table ( data_file, header = T, sep = ";", stringsAsFactors = F)

twoDayaData <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]

rm(data)

globalActivePower <- as.numeric(twoDayaData$Global_active_power)

png("plot1.png", width=480, height=480)

hist(globalActivePower, col = "red", main = "Global Active Power", 
     xlab="Global Active Power (kilowatts)")

dev.off()
