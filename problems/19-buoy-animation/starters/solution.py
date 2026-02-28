#!/usr/bin/env python3
"""
Problem 19: Animate Ice Buoy Movement (Stretch Goal)
Create an animation of a single beacon's movement from BaySys data.
"""
# Suggested libraries:
# import matplotlib.pyplot as plt
# import matplotlib.animation as animation
# import pandas as pd
# import numpy as np

# ERDDAP details
SERVER = "https://canwinerddap.ad.umanitoba.ca/erddap"
DATASET_ID = "BaySys_IceBeacon_data_9484_28fc_f86c"

# Step 1: Download data for one beacon
# url = f"{SERVER}/tabledap/{DATASET_ID}.csv?time,latitude,longitude,beacon_ID&beacon_ID=%22YOUR_BEACON%22"

# Step 2: Parse and sort by time

# Step 3: Create animation
# fig, ax = plt.subplots()
# def update(frame):
#     ...
# ani = animation.FuncAnimation(fig, update, frames=len(data))

# Step 4: Save
# ani.save("problems/19-buoy-animation/animation.gif", writer='pillow', fps=10)
