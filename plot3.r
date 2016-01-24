#Plot#3
#library(lattice)
hpc <- read.csv("household_power_consumption.txt", sep=";", na.strings = "?")

#Subsetting Dates
ss_dates <- as.Date(hpc$Date, "%d/%m/%Y")
ss_hpc <- hpc[which(ss_dates>="2007-02-01" & ss_dates<="2007-02-02"),]

# Plot 3 - Energy Sub metering

plot(ss_hpc$Time, ss_hpc$Sub_metering_1, 
       type="l", 
       col = "black",
       ylab = "Energy Sub metering")
lines(ss_hpc$Sub_metering_2, col = "red")
lines(ss_hpc$Sub_metering_3, col = "blue")

legend("topright", 
       legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
       col = c("black","red", "blue"), 
       lty = c(1,1,1))

dev.copy(png, file = "plot3.png") ## Copy plot3 to a PNG file
dev.off()


