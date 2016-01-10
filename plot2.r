
setwd("E:\\DS\\4. Exploratory Data Analysis\\P1")
ds <- read.csv("household_power_consumption.txt", na.strings="?", header=T, sep=';')
#ds$Date <- as.Date(ds$Date,format="%d/%m/%Y") 
ds <- data[ds$Date %in% c("1/2/2007","2/2/2007") ,]

ds$Date <- as.Date(ds$Date,format="%d/%m/%Y") 
ds1<- subset(ds, subset=(Date >= "2007-02-01" & Date <= "2007-02-02"))

png("plot2.png", width=480, height=480)
plot(strptime(paste(ds1$Date,ds1$Time),"%Y-%m-%d %H:%M:%S"),ds1$Global_active_power, type="l",col="black", main="Global Active Power", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()

