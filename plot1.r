#Plot#1
library(lattice)
hpc <- read.csv("household_power_consumption.txt", sep=";", na.strings = "?")

#Subsetting Dates
ss_dates <- as.Date(hpc$Date, "%d/%m/%Y")
ss_hpc <- hpc[which(ss_dates>="2007-02-01" & ss_dates<="2007-02-02"),]

# Plot 1 - Histogram - Global Active Power
hist(ss_hpc$Global_active_power, col="red", xlab = "Global Active Power (kilowatts)", main = "Global Active Power")

dev.copy(png, file = "plot1.png") ## Copy plot1 to a PNG file
dev.off()


