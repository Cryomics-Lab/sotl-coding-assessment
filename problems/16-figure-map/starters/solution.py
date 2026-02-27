# Problem 16 Starter (Python)
# Create a publication-quality map

import pandas as pd
import matplotlib.pyplot as plt
from matplotlib.patches import FancyArrowPatch
from matplotlib.lines import Line2D
import numpy as np

# Read data
stations = pd.read_csv('../05-merge-and-summarize/input/stations.csv')
points = pd.read_csv('../08-optimize-search/input/points.csv')

# TODO: Create map
# - Plot stations as labeled points
# - Plot geographic points colored by category
# - Add north arrow
# - Add scale bar
# - Add coordinate grid
# - Add legend

# Suggested approach:
# fig, ax = plt.subplots(figsize=(8, 8), dpi=96)
#
# # Plot geographic points by category
# for cat in points['category'].unique():
#     data = points[points['category'] == cat]
#     ax.scatter(data['lon'], data['lat'], label=cat, alpha=0.5, s=20)
#
# # Plot stations as larger markers with labels
# ax.scatter(stations['longitude'], stations['latitude'], s=100, marker='^', 
#            color='black', edgecolor='white', zorder=5, label='Stations')
# for idx, row in stations.iterrows():
#     ax.annotate(row['station_name'], (row['longitude'], row['latitude']),
#                xytext=(5, 5), textcoords='offset points', fontsize=8)
#
# # Add north arrow and scale bar
# # (TODO: implement)
#
# # Add grid
# ax.grid(True, alpha=0.3)
# ax.set_xlabel('Longitude')
# ax.set_ylabel('Latitude')
# ax.set_title('Manitoba: Station and Point Distribution')
# ax.legend(loc='best')
# plt.tight_layout()
# plt.savefig('map.png', dpi=96, bbox_inches='tight')
# plt.close()

print("TODO: Create map with all cartographic elements")
