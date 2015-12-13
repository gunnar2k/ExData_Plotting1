# Read data (shared among all plots)
source("read_data.R")

# Create specific plots

par(mfrow = c(2, 2))

source("plot2_main.R")

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

source("plot3_main.R")

plot(
  data$Date,
  data$Global_active_power,
  main="",
  col=c("black"),
  xlab="datetime",
  ylab="Global_active_power",
  cex=0
)
lines(data$Date, data$Global_active_power)


# Output to correct format
dev.copy(png, height=480, width=480, filename="plot4.png")
dev.off()
