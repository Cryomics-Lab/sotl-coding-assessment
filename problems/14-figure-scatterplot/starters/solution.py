# Problem 14 Starter (Python)
# Create a publication-quality scatterplot with trend line

import pandas as pd
import matplotlib.pyplot as plt
import seaborn as sns
import numpy as np
from scipy import stats

# Read observations data
obs = pd.read_csv('../05-merge-and-summarize/input/observations.csv')

# TODO: Create scatterplot
# - X-axis: temp_c
# - Y-axis: snow_depth_cm
# - Color by station_id
# - Add trend line with confidence interval
# - Adjust transparency and point size for overplotting

# Suggested approach:
# fig, ax = plt.subplots(figsize=(5, 4), dpi=96)
# for station in obs['station_id'].unique():
#     data = obs[obs['station_id'] == station]
#     ax.scatter(data['temp_c'], data['snow_depth_cm'], alpha=0.6, label=station)
#
# # Add trend line
# valid = obs.dropna(subset=['temp_c', 'snow_depth_cm'])
# z = np.polyfit(valid['temp_c'], valid['snow_depth_cm'], 1)
# p = np.poly1d(z)
# x_line = np.linspace(valid['temp_c'].min(), valid['temp_c'].max(), 100)
# ax.plot(x_line, p(x_line), 'k--', linewidth=2, label='Trend')
#
# ax.set_xlabel('Temperature (°C)')
# ax.set_ylabel('Snow Depth (cm)')
# ax.set_title('Temperature vs. Snow Depth by Station')
# ax.legend()
# plt.tight_layout()
# plt.savefig('scatterplot.png', dpi=96, bbox_inches='tight')
# plt.close()

print("TODO: Create scatterplot with trend line")
