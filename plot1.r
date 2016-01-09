library (dplyr)
ds <- read.csv("C:\\Users\\r.baskar\\Desktop\\CourseEra\\Downloads\\power.txt", na.strings="?", header=T, sep=';')
ds$Date <- as.Date(ds$Date,format="%d/%m/%Y") 
ds <- data[ds$Date %in% c("1/2/2007","2/2/2007") ,]


png("plot1.png", width=480, height=480)
hist(ds$Global_active_power,breaks=c(24),col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)", ylab="Frequency")
dev.off()

