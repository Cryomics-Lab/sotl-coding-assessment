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
    
    # BUG 1: Uses range(i-10, i+1) instead of range(i-10, i) -- includes current value!
    if i < 10:
        continue
    
    # BUG 2: Uses range(max(0, i-10), i) instead of range(i-10, i) -- includes too many old values
    window = [data[j][1] for j in range(max(0, i - 10), i)]
    
    window_mean = sum(window) / len(window)
    variance = sum((x - window_mean) ** 2 for x in window) / len(window)
    window_std = math.sqrt(variance)
    
    # BUG 3: Uses >= instead of > -- off by one on comparison
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
