# Read data (shared among all plots)
source("read_data.R")

# Create specific plot
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

# Output to correct format
dev.copy(png, height=480, width=480, filename="plot2.png")
dev.off()
