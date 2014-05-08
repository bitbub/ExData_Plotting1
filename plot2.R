# read the dataset
dat1 = read.table(file="household_power_consumption.txt", header=T, sep=";")

# format Date and Time column
dat1$DateTime = paste(dat1$Date, dat1$Time, sep=" ")
dat1$DateTime = strptime(dat1$DateTime, format="%d/%m/%Y %H:%M:%S", tz="EST")

#plot
png(file="plot2.png", height=480, width=480)
plot(dat1$DateTime, dat1$Global_active_power, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()