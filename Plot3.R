HouseTable<-read.table("C:/Course Work/Machine learning/Courseera/R/Course 4/household_power_consumption.txt",sep = ";",header = TRUE)
dim(HouseTable)
names(HouseTable)
library(dplyr)
tabfin<-filter(HouseTable,Date==("1/2/2007") | Date== "2/2/2007")
unique(tabfin$Date)
y<-strptime(paste(tabfin$Date,tabfin$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
png(file="C:/Course Work/Machine learning/Courseera/R/Course 4/Plot3.png")
with(tabfin, plot(y,tabfin$Sub_metering_1, type="n", ylab = "Energy Sub Metering"))
lines(y,tabfin$Sub_metering_1,col="Black")
lines(y,tabfin$Sub_metering_2,col="red")
lines(y,tabfin$Sub_metering_3,col="blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1, lwd=2.5, col=c("black", "red", "blue"))
dev.off()
