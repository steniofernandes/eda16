#Plot#4
#Stenio Fernandes
hpc <- read.csv("household_power_consumption.txt", sep=";", na.strings = "?")

#Subsetting Dates
ss_dates <- as.Date(hpc$Date, "%d/%m/%Y")
ss_hpc <- data.frame(hpc[which(ss_dates>="2007-02-01" & ss_dates<="2007-02-02"),])

par(mfcol=c(2,2))
par(mar = c(4,4,1,1))
#1
plot(ss_hpc$Time, ss_hpc$Global_active_power,  
       type="l", 
       col = "black",
       ylab = "GAP (kilowatts)", xlab="")
       
#2
plot(ss_hpc$Time, ss_hpc$Sub_metering_1, 
     type="l", 
     col = "black",
     ylab = "Energy Sub metering", xlab="")
lines(ss_hpc$Sub_metering_2, col = "red")
lines(ss_hpc$Sub_metering_3, col = "blue")

#3
plot(ss_hpc$Time, ss_hpc$Voltage,  
     type="l", 
     col = "black",
     ylab = "Voltage", xlab="")

#4
plot(ss_hpc$Time, ss_hpc$Global_reactive_power,  
     type="l", 
     col = "black",
     ylab = "GRP", xlab="")


dev.copy(png, file = "plot4.png") ## Copy plot4 to a PNG file
dev.off()


