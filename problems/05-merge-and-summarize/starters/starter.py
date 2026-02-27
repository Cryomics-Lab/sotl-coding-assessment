# Problem 5: Merge and Summarize
# Merge stations.csv and observations.csv, aggregate stats
# Save output to: problems/05-merge-and-summarize/output.csv

import csv

stations = {}
with open('problems/05-merge-and-summarize/input/stations.csv', 'r') as f:
    reader = csv.DictReader(f)
    for row in reader:
        stations[row['station_id']] = row

observations = []
with open('problems/05-merge-and-summarize/input/observations.csv', 'r') as f:
    reader = csv.DictReader(f)
    for row in reader:
        observations.append(row)

# YOUR CODE HERE
