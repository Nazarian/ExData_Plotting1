datos <- read.table("household_power_consumption.txt", sep=";")
datos <- datos[66638:69517,]
Histo <- datos[,3]
Histo <- as.numeric(as.character(Histo))
hist(Histo, col="red", ylim=c(0,1200), main="Global Active Power", xlab="Global Active Power (kilowatts)", cex.lab=0.8, yaxt="n", xaxt="n")
axis(2,seq(000, 1200, by = 200), las=2, cex.axis=0.8)
axis(1, cex.axis=0.8)
dev.copy(png, "plot1.png", height=480, width=480)
dev.off()