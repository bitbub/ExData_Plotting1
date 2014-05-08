# read the dataset
dat3 = read.table(file="household_power_consumption.txt", header=T, sep=";", as.is=T)
#dim(dat3)
#str(dat3)

# format Date and Time columns
dat3$DateTime = paste(dat3$Date, dat3$Time, sep=" ")
dat3$DateTime = strptime(dat3$DateTime, format="%d/%m/%Y %H:%M:%S", tz="EST")

# plot
png(file="plot4.png", height=480, width=480)
par(mfrow=c(2,2), mar=c(5,4,2,2))

plot(dat3$DateTime, dat3$Global_active_power, type="l", xlab="", ylab="Global Active Power")

plot(dat3$DateTime, dat3$Voltage, type="l", xlab="datetime", ylab="Voltage")

plot(dat2$DateTime, dat2$Sub_metering_1, type="l", xlab="", ylab="Energy sub metering")
lines(dat2$DateTime, dat2$Sub_metering_2, type="l", xlab="",col="Red")
lines(dat2$DateTime, dat2$Sub_metering_3,type="l", col="Blue")
legend("topright",c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),col=c("black","red","blue"), lty=1, lwd=3, bty="o", box.col="White", bg="White", cex=0.6)

plot(dat3$DateTime, dat3$Global_reactive_power, type="l", xlab="datetime", ylab="Global_reactive_power")
dev.off()
