setwd("/Users/ashisood/Documents/personal/courses/datasciencecoursera/explorelatory data science/week1")
dataFile <- "./household_power_consumption.txt"
data <- read.table(dataFile, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
mydfdata <- tbl_df(data)
subSetmydfData <- filter(mydfdata, Date == "1/2/2007" | Date == "2/2/2007" )

datetime<- strptime(paste(subSetmydfData$Date,subSetmydfData$Time), format = "%d/%m/%Y %H:%M:%S")
png("plot2.png", width=480, height=480)
plot(datetime, globalActivePower, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()

