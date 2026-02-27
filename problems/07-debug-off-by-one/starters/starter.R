# Problem 7: Debug Off-by-One
# Fix the 3 bugs in this anomaly detection code
# Save output to: problems/07-debug-off-by-one/output.csv

data <- read.csv('problems/07-debug-off-by-one/input/timeseries.csv')

anomalies <- data.frame()

for (i in 1:nrow(data)) {
  timestamp <- data[i, 'timestamp']
  value <- data[i, 'value']
  
  if (i < 10) {
    next
  }
  
  # BUG: Fix the window calculation
  window_indices <- max(1, i - 10):i
  window <- data[window_indices, 'value']
  
  window_mean <- mean(window)
  window_std <- sd(window) * sqrt((length(window) - 1) / length(window))
  
  # BUG: Fix the comparison operator
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
