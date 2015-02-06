datos <- read.csv("household_power_consumption.txt", sep=";")
datos <- datos[66638:69517,]
datos$Datetime <- as.POSIXct(paste(as.Date(as.character(datos[,1]),format="%d/%m/%Y"), datos[,2]))
plot(as.numeric(as.character(datos[,3]))~datos$Datetime, ylab="Global Active Power (kilowatts)", xlab="", type="l")
dev.copy(png, "plot2.png", height=480, width=480)
dev.off()