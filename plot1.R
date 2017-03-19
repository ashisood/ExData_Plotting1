setwd("/Users/ashisood/Documents/personal/courses/datasciencecoursera/explorelatory data science/week1")
dataFile <- "./household_power_consumption.txt"
data <- read.table(dataFile, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
mydfdata <- tbl_df(data)
subSetmydfData <- filter(mydfdata, Date == "1/2/2007" | Date == "2/2/2007" )

#str(subSetData)
globalActivePower <- as.numeric(subSetmydfData$Global_active_power)
png("plot1.png", width=480, height=480)
hist(globalActivePower, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.off()
