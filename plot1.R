# read the dataset
dat = read.table(file="household_power_consumption.txt", header=T, sep=";")
#dim(dat)
#names(dat)
#str(dat)

#plot
png(file="plot1.png", height=480, width=480)
hist(dat$Global_active_power, xlab="Global Active Power (kilowatts)", main="Global Active Power", col="red")
dev.off()

