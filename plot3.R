setwd("/Users/ashisood/Documents/personal/courses/datasciencecoursera/explorelatory data science/week1")
dataFile <- "./household_power_consumption.txt"
data <- read.table(dataFile, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
mydfdata <- tbl_df(data)
subSetmydfData <- filter(mydfdata, Date == "1/2/2007" | Date == "2/2/2007" )

sub_metering_1 <- as.numeric(subSetmydfData$Sub_metering_1)
sub_metering_2 <- as.numeric(subSetmydfData$Sub_metering_2)
sub_metering_3 <- as.numeric(subSetmydfData$Sub_metering_3)

png("plot3.png", width=480, height=480)
datetime<- strptime(paste(subSetmydfData$Date,subSetmydfData$Time), format = "%d/%m/%Y %H:%M:%S")
plot(datetime, sub_metering_1, ylab="Energy Submetering", xlab="", type = "n")
lines(datetime, sub_metering_1, type = "l", col = "black")
lines(datetime, sub_metering_2, type="l", col="red")
lines(datetime, sub_metering_3, type="l", col="blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1, lwd=2.5, col=c("black", "red", "blue"))
dev.off()