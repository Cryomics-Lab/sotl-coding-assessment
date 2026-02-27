# Problem 6: Moving Average
# Compute 7-day centered moving average for STN_C
# Save output to: problems/06-moving-average/output.csv

import csv

data = []
with open('problems/05-merge-and-summarize/input/observations.csv', 'r') as f:
    reader = csv.DictReader(f)
    for row in reader:
        if row['station_id'] == 'STN_C':
            data.append(row)

# Sort by date
data.sort(key=lambda x: x['date'])

# YOUR CODE HERE
