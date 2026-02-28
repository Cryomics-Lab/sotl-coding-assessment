#!/usr/bin/env python3
"""
Problem 17: Download Weather Data from Environment Canada
Download 2017 daily data for Churchill A and compute monthly mean temperatures.
"""
import csv
# You may also want: import urllib.request, or use the 'requests' library

# Step 1: Find the station ID for Churchill A
# Hint: https://climate.weather.gc.ca/historical_data/search_historic_data_e.html

# Step 2: Download the CSV
# url = f"https://climate.weather.gc.ca/climate_data/bulk_data_e.html?format=csv&stationID=????&Year=2017&Month=1&Day=1&timeframe=2&submit=Download+Data"

# Step 3: Parse the CSV and compute monthly mean temperatures

# Step 4: Write output
output_path = "problems/17-weather-data-download/output.csv"
# with open(output_path, 'w', newline='') as f:
#     writer = csv.writer(f)
#     writer.writerow(["month", "mean_temp_c", "n_observations"])
#     ...
