datos <- read.csv("household_power_consumption.txt", sep=";")
datos <- datos[66638:69517,]
datos$Datetime <- as.POSIXct(paste(as.Date(as.character(datos[,1]),format="%d/%m/%Y"), datos[,2]))
plot(as.numeric(as.character(datos[,7]))~datos$Datetime, ylab="Enery sub metering", xlab="", type="l")
lines(as.numeric(as.character(datos[,8]))~datos$Datetime, ylab="Enery sub metering", xlab="", type="l", col="red")
lines(as.numeric(as.character(datos[,9]))~datos$Datetime, ylab="Enery sub metering", xlab="", type="l", col="blue")
legend("topright", lty=c(1,1),lwd=c(2.5,2.5),col=c("black", "red", "blue"), legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), pt.cex = 1, cex=0.7)
dev.copy(png, "plot3.png", height=480, width=480)
dev.off()