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
