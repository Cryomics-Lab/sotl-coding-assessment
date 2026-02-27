# Problem 6: Moving Average
# Compute 7-day centered moving average for STN_C
# Save output to: problems/06-moving-average/output.csv

data <- read.csv('problems/05-merge-and-summarize/input/observations.csv')
data <- data[data$station_id == 'STN_C', ]
data <- data[order(data$date), ]

# YOUR CODE HERE
