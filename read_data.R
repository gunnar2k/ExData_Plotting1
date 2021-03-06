unzip("exdata-data-household_power_consumption.zip")
library(dplyr)
library(data.table)
data <- fread("household_power_consumption.txt", na.strings="?", colClasses=c("Date", "character", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric"))
data <- mutate(data, Date = as.Date(Date, format="%d/%m/%Y"))
data <- filter(data, Date == "2007-02-01" | Date == "2007-02-02")
data <- mutate(data, Date = as.POSIXct(paste(Date, Time), format="%Y-%m-%d %H:%M:%S"))
