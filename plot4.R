# Read data (shared among all plots)
source("read_data.R")

# Create specific plots

par(mfrow = c(2, 2))

# Top left graph
plot(
  data$Date,
  data$Global_active_power,
  main="",
  col=c("black"),
  xlab="",
  ylab="Global Active Power (kilowatts)",
  cex=0
)
lines(data$Date, data$Global_active_power)

# Top Right graph
plot(
  data$Date,
  data$Voltage,
  main="",
  col=c("black"),
  xlab="datetime",
  ylab="Voltage",
  cex=0
)
lines(data$Date, data$Voltage)

# Bottom left graph

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

# Bottom right graph

plot(
  data$Date,
  data$Global_reactive_power,
  main="",
  col=c("black"),
  xlab="datetime",
  ylab="Global_reactive_power",
  cex=0
)
lines(data$Date, data$Global_reactive_power)

# Output to correct format
dev.copy(png, height=480, width=480, filename="plot4.png")
dev.off()
