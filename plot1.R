# Read data (shared among all plots)
source("read_data.R")

# Create specific plot
hist(
  data$Global_active_power,
  main="Global Active Power",
  xlab="Global Active Power (kilowatts)",
  col=c("red")
)

# Output to correct format
dev.copy(png, height=480, width=480, filename="plot1.png")
dev.off()
