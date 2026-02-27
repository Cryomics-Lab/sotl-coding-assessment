# Problem 13 Starter (Python)
# Create a publication-quality boxplot

import pandas as pd
import matplotlib.pyplot as plt
import seaborn as sns

# Read weather data
weather = pd.read_csv('../02-csv-column-mean/input/weather.csv')

# TODO: Create boxplot
# - X-axis: station_id
# - Y-axis: temp_c
# - Use colorblind-friendly palette
# - Add proper labels and title
# - Set figure size to ~89mm width (approximately 350px at 96dpi)

# Suggested approach:
# fig, ax = plt.subplots(figsize=(5, 4), dpi=96)
# sns.boxplot(data=weather, x='station_id', y='temp_c', palette='Set2', ax=ax)
# ax.set_xlabel('Station')
# ax.set_ylabel('Temperature (°C)')
# ax.set_title('Daily Temperature Distribution by Station')
# plt.tight_layout()
# plt.savefig('boxplot.png', dpi=96, bbox_inches='tight')
# plt.close()

print("TODO: Create boxplot")
