#!/usr/bin/env python3
"""
Problem 20: Interactive Web Map — Buoy Tracker (Stretch Goal)
Build a locally-served web map showing all BaySys ice beacon tracks.
"""
# Suggested: pip install folium pandas

# import folium
# import pandas as pd

# ERDDAP details
SERVER = "https://canwinerddap.ad.umanitoba.ca/erddap"
DATASET_ID = "BaySys_IceBeacon_data_9484_28fc_f86c"

# Step 1: Download data for all beacons
# url = f"{SERVER}/tabledap/{DATASET_ID}.csv?time,latitude,longitude,beacon_ID"

# Step 2: Create folium map
# m = folium.Map(location=[58, -90], zoom_start=6)

# Step 3: Add beacon tracks as colored polylines
# colors = ['red', 'blue', 'green', 'orange', 'purple', ...]
# for i, (beacon_id, group) in enumerate(df.groupby('beacon_ID')):
#     coords = list(zip(group['latitude'], group['longitude']))
#     folium.PolyLine(coords, color=colors[i % len(colors)],
#                     popup=beacon_id).add_to(m)

# Step 4: Save
# m.save("problems/20-buoy-web-map/index.html")
# print("Open problems/20-buoy-web-map/index.html in a browser")
