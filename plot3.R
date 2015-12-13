# Read data (shared among all plots)
source("read_data.R")

# Create specific plot
plot(
  data$Date,
  data$Sub_metering_1,
  main="",
  col=c("black"),
  xlab="",
  ylab="Energy sub metering",
  ylim=c(0, 40),
  cex=0
)
lines(data$Date, data$Sub_metering_1)
lines(data$Date, data$Sub_metering_2, col=c("red"))
lines(data$Date, data$Sub_metering_3, col=c("blue"))

legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1, col=c("black", "red", "blue"))

# Output to correct format
dev.copy(png, height=480, width=480, filename="plot3.png")
dev.off()
