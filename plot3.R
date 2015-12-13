# Read data (shared among all plots)
source("read_data.R")

# Create specific plot
source("plot3_main.R")

# Output to correct format
dev.copy(png, height=480, width=480, filename="plot3.png")
dev.off()
