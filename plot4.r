setwd("E:\\DS\\4. Exploratory Data Analysis\\P1")
ds <- read.csv("household_power_consumption.txt", na.strings="?", header=T, sep=';')
ds$Date <- as.Date(ds$Date,format="%d/%m/%Y") 
ds1<- subset(ds, subset=(Date >= "2007-02-01" & Date <= "2007-02-02"))
temp_time=strptime(paste(ds1$Date,ds1$Time),"%Y-%m-%d %H:%M:%S")



png("plot4.png", width=480, height=480)
par(mfrow = c(2,2), mar = c(4, 4, 2, 1), oma = c(0, 0, 2, 0))
with (ds1,
      {plot(temp_time,ds1$Global_active_power, type="l",col="black", xlab="", ylab="Global Active Power")
        plot(temp_time,ds1$Voltage,type="l" ,col="black",  xlab="datetime", ylab="Voltage")
        plot(temp_time,ds1$Sub_metering_1, type="l",col="black", xlab="", ylab="Energy sub metering")
        lines(temp_time,ds1$Sub_metering_2, col="red")
        lines(temp_time,ds1$Sub_metering_3, col="blue")
        plot(temp_time,ds1$Global_reactive_power, type="l",col="black", xlab="", ylab="Global_reactive_power")
      }
)
dev.off()
