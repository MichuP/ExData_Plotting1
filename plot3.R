wd <- 'C:/Users/Micha³.Micha³-PC/Documents/ExData_Plotting1'
setwd(wd)
rawData <- read.table('./household_power_consumption.txt',
                      sep = ';' , header = T, na.strings ='?', stringsAsFactors= F)
plotData <- rawData[rawData$Date %in% c('1/2/2007','2/2/2007') ,]

png('plot3.png')
dt <- strptime(paste(plotData$Date, plotData$Time, sep=' '), '%d/%m/%Y %H:%M:%S')
s1 <- as.numeric(plotData$Sub_metering_1)
s2 <- as.numeric(plotData$Sub_metering_2)
s3 <- as.numeric(plotData$Sub_metering_3)

png(filename = 'plot3.png', width = 480, height = 480, units = 'px', bg = 'transparent')
plot(dt, s1, type = 'l', ylab='Energy sub metering', xlab='')
lines(dt, s2, col = 'red')
lines(dt, s3, col = 'blue')
legend('topright', legend = c('Sub_metering_1', 'Sub_metering_2', 'Sub_metering_3'), lty=1, lwd=2.5, col = c('black', 'red', 'blue'))
dev.off()