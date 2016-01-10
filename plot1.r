
setwd("E:\\DS\\4. Exploratory Data Analysis\\P1")
ds <- read.csv("household_power_consumption.txt", na.strings="?", header=T, sep=';')

ds$Date <- as.Date(ds$Date,format="%d/%m/%Y")
png("plot1.png", width=480, height=480)
hist(ds$Global_active_power,breaks=c(24),col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)", ylab="Frequency")
dev.off()

