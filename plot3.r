library (dplyr)
ds <- read.csv("C:\\Users\\r.baskar\\Desktop\\CourseEra\\Downloads\\power.txt", na.strings="?", header=T, sep=';')
ds1<- subset(ds, subset=(Date >= "2007-02-01" & Date <= "2007-02-02"))
temp_time=strptime(paste(ds1$Date,ds1$Time),"%Y-%m-%d %H:%M:%S")




plot(temp_time,ds1$Sub_metering_1, type="l",col="black", main="Global Active Power", xlab="", ylab="Energy sub metering")
lines(temp_time,ds1$Sub_metering_2, col="red")
lines(temp_time,ds1$Sub_metering_3, col="blue")
legend("topright",c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),lty=1, lwd=1, col=c("black", "red", "blue"))



