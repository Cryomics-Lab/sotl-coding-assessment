# Problem 17: Download Weather Data from Environment Canada
# Download 2017 daily data for Churchill A and compute monthly mean temperatures.

# You may want: library(weathercan) or just download.file()

# Step 1: Find the station ID for Churchill A
# Hint: https://climate.weather.gc.ca/historical_data/search_historic_data_e.html

# Step 2: Download the CSV
# url <- "https://climate.weather.gc.ca/climate_data/bulk_data_e.html?format=csv&stationID=????&Year=2017&Month=1&Day=1&timeframe=2&submit=Download+Data"
# download.file(url, "churchill_2017.csv")

# Step 3: Parse CSV and compute monthly means
# df <- read.csv("churchill_2017.csv", skip = 0)

# Step 4: Write output
output_path <- "problems/17-weather-data-download/output.csv"
# write.csv(result, output_path, row.names = FALSE)
