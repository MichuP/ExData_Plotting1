wd <- 'C:/Users/Micha³.Micha³-PC/Documents/ExData_Plotting1'
setwd(wd)
rawData <- read.table('./household_power_consumption.txt',
                      sep = ';' , header = T, na.strings ='?', stringsAsFactors= F)
plotData <- rawData[rawData$Date %in% c('1/2/2007','2/2/2007') ,]
png('plot2.png', width = 480, height = 480, units = 'px')
dt <- strptime(paste(plotData$Date, plotData$Time, sep=' '), '%d/%m/%Y %H:%M:%S')
gap <- as.numeric(plotData$Global_active_power)
plot(dt, gap, type = "l", ylab='Global Active Power (kilowatts)')
dev.off()
