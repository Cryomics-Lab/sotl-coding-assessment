# Problem 15 Starter (Python)
# Create a publication-quality grouped bar chart

import pandas as pd
import matplotlib.pyplot as plt
import numpy as np

# Read log file
log_data = []
with open('../04-string-parsing/input/logfile.txt', 'r') as f:
    for line in f:
        # Parse: TIMESTAMP [LEVEL] METHOD PATH STATUS RESPONSE_TIME
        parts = line.strip().split()
        if len(parts) >= 6:
            level = parts[1].strip('[]')
            status = int(parts[4])
            log_data.append({'level': level, 'status': status})

df = pd.DataFrame(log_data)

# TODO: Group by status and level, count
# TODO: Create grouped bar chart
# - X-axis: status codes (sorted)
# - Y-axis: count
# - Bars grouped by log level
# - Highlight error status codes (400+)

# Suggested approach:
# grouped = df.groupby(['status', 'level']).size().unstack(fill_value=0)
# fig, ax = plt.subplots(figsize=(10, 5), dpi=96)
# grouped.plot(kind='bar', ax=ax, color=['blue', 'gray', 'red'])
# ax.set_xlabel('HTTP Status Code')
# ax.set_ylabel('Count')
# ax.set_title('HTTP Status Codes by Log Level')
# plt.xticks(rotation=45)
# plt.tight_layout()
# plt.savefig('barchart.png', dpi=96, bbox_inches='tight')
# plt.close()

print("TODO: Create grouped bar chart")
