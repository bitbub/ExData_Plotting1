# read the datasets
dat2 = read.table(file="household_power_consumption.txt", header=T, sep=";", as.is=T)
#dim(dat2)
#names(dat2)
#str(dat2)

# format Date and Time column
dat2$DateTime = paste(dat2$Date, dat2$Time, sep=" ")
dat2$DateTime = strptime(dat2$DateTime, format="%d/%m/%Y %H:%M:%S", tz="EST")

#plot
png(file="plot3.png", height=480, width=480)
plot(dat2$DateTime, dat2$Sub_metering_1, type="l", xlab="", ylab="Energy sub metering")
lines(dat2$DateTime, dat2$Sub_metering_2, type="l", xlab="",col="Red")
lines(dat2$DateTime, dat2$Sub_metering_3,type="l", col="Blue")
legend("topright",c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),col=c("black","red","blue"), lty=1, lwd=3, cex=1)
dev.off()
