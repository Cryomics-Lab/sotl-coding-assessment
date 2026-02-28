#!/usr/bin/env python3
"""
Problem 20: CanWIN ERDDAP API — BaySys Ice Beacon Data
Download ice beacon data via ERDDAP and summarize beacon movement.
"""
import csv
import math
# You may also want: import urllib.request, or use 'requests', 'erddapy', or 'pandas'

# ERDDAP details
SERVER = "https://canwinerddap.ad.umanitoba.ca/erddap"
DATASET_ID = "BaySys_IceBeacon_data_9484_28fc_f86c"

# Step 1: Construct the tabledap URL
# variables = "time,latitude,longitude,beacon_ID"
# constraints = "time>=2017-03-01T00:00:00Z&time<=2017-04-01T00:00:00Z"
# url = f"{SERVER}/tabledap/{DATASET_ID}.csv?{variables}&{constraints}"

# Step 2: Download and parse the CSV

# Step 3: Group by beacon_ID, compute stats

def haversine(lat1, lon1, lat2, lon2):
    """Distance in km between two lat/lon points."""
    R = 6371  # Earth radius in km
    dlat = math.radians(lat2 - lat1)
    dlon = math.radians(lon2 - lon1)
    a = math.sin(dlat/2)**2 + math.cos(math.radians(lat1)) * math.cos(math.radians(lat2)) * math.sin(dlon/2)**2
    return R * 2 * math.atan2(math.sqrt(a), math.sqrt(1 - a))

# Step 4: Write output
output_path = "problems/20-canwin-api/output.csv"
# with open(output_path, 'w', newline='') as f:
#     writer = csv.writer(f)
#     writer.writerow(["beacon_id", "n_observations", "mean_lat", "mean_lon", "total_distance_km"])
#     ...
