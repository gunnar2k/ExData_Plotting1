# Read data (shared among all plots)
source("read_data.R")

# Create specific plot
source("plot2_main.R")

# Output to correct format
dev.copy(png, height=480, width=480, filename="plot2.png")
dev.off()
