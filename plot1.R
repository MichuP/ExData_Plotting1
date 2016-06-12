library(dplyr)

wd <- 'C:/Users/Micha³.Micha³-PC/Documents/ExData_Plotting1'
setwd(wd)
rawData <- read.table('./household_power_consumption.txt',
           sep = ';' , header = T, na.strings ='?', stringsAsFactors= F)
rawData$Date <- as.Date(rawData$Date, '%d/%m/%Y')
plotData <- filter(rawData, Date == '2007-02-01' | Date == '2007-02-02')

png('plot1.png', width = 480, height = 480, units = 'px')
hist(plotData$Global_active_power, col = 'red', xlab = 'Global Active Power (kilowatts)', main = 'Global Active Power')
dev.off()
