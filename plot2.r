#Plot#2
library(lattice)
hpc <- read.csv("household_power_consumption.txt", sep=";", na.strings = "?")

#Subsetting Dates
ss_dates <- as.Date(hpc$Date, "%d/%m/%Y")
ss_hpc <- hpc[which(ss_dates>="2007-02-01" & ss_dates<="2007-02-02"),]

# Plot 2 - Global_active_power ~ Date

xyplot(Global_active_power~Time, data=ss_hpc, 
       type="l", 
       col = "black",
       ylab = "Global Active Power (kilowatts)",
       #xlab=weekdays(as.Date(ss_hpc$Date)))
       xlab = c("Thu\t", "Fri\t", "Sat"))

dev.copy(png, file = "plot2.png") ## Copy plot2 to a PNG file
dev.off()


