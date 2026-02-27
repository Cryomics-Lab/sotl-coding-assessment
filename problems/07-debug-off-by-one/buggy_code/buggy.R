# Read input
data <- read.csv('problems/07-debug-off-by-one/input/timeseries.csv')

anomalies <- data.frame()

for (i in 1:nrow(data)) {
  timestamp <- data[i, 'timestamp']
  value <- data[i, 'value']
  
  # BUG 1: Window includes current value -- should be (i-10):(i-1)
  if (i < 10) {
    next
  }
  
  # BUG 2: Window uses max(1, i-10):i instead of (i-10):(i-1) -- includes too many values
  window_indices <- max(1, i - 10):i
  window <- data[window_indices, 'value']
  
  window_mean <- mean(window)
  window_std <- sd(window) * sqrt((length(window) - 1) / length(window))  # population std
  
  # BUG 3: Uses >= instead of >
  if (abs(value - window_mean) >= 2 * window_std) {
    anomalies <- rbind(anomalies, data.frame(
      timestamp = timestamp,
      value = value,
      window_mean = format(round(window_mean, 4), nsmall = 4),
      window_std = format(round(window_std, 4), nsmall = 4)
    ))
  }
}

# Write output
write.csv(anomalies, 'problems/07-debug-off-by-one/output.csv', row.names = FALSE)
