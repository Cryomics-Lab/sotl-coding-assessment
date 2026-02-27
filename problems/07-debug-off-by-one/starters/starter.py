# Problem 7: Debug Off-by-One
# Fix the 3 bugs in this anomaly detection code
# Save output to: problems/07-debug-off-by-one/output.csv

import csv
import math

# Read input
with open('problems/07-debug-off-by-one/input/timeseries.csv', 'r') as f:
    reader = csv.DictReader(f)
    data = [(row['timestamp'], float(row['value'])) for row in reader]

# Find anomalies
anomalies = []
for i in range(len(data)):
    timestamp, value = data[i]
    
    if i < 10:
        continue
    
    # BUG: Fix the window calculation
    window = [data[j][1] for j in range(max(0, i - 10), i)]
    
    window_mean = sum(window) / len(window)
    variance = sum((x - window_mean) ** 2 for x in window) / len(window)
    window_std = math.sqrt(variance)
    
    # BUG: Fix the comparison operator
    if abs(value - window_mean) >= 2 * window_std:
        anomalies.append({
            'timestamp': timestamp,
            'value': value,
            'window_mean': window_mean,
            'window_std': window_std
        })

# Write output
with open('problems/07-debug-off-by-one/output.csv', 'w', newline='') as f:
    writer = csv.DictWriter(f, fieldnames=['timestamp', 'value', 'window_mean', 'window_std'])
    writer.writeheader()
    for row in anomalies:
        writer.writerow({
            'timestamp': row['timestamp'],
            'value': row['value'],
            'window_mean': f"{row['window_mean']:.4f}",
            'window_std': f"{row['window_std']:.4f}"
        })
