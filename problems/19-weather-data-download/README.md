# Problem 19: Download Weather Data from Environment Canada

## Specification
Download the **2017 daily weather data** for **Churchill A** (Manitoba) from Environment and Climate Change Canada's historical climate data service.

Your task:
1. Find the correct station and download the 2017 daily CSV
2. Compute the **monthly mean temperature** for each month of 2017
3. Report the number of valid observations per month

**Hints:**
- The historical data portal is at: https://climate.weather.gc.ca/
- Data can be downloaded via bulk CSV: `https://climate.weather.gc.ca/climate_data/bulk_data_e.html?format=csv&stationID=XXXXX&Year=YYYY&Month=1&Day=1&timeframe=2&submit=Download+Data`
- You need to find the correct `stationID` for Churchill A
- The station name in the data is "CHURCHILL A" with Climate ID "5060595"
- Some days have missing temperature data — only average over days with valid `Mean Temp (°C)` values

## Output
Save to: `problems/19-weather-data-download/output.csv`

```
month,mean_temp_c,n_observations
1,-21.8,19
2,-25.5,12
3,-19.4,21
...
```

- 12 rows plus header (one row per month)
- `mean_temp_c` rounded to 1 decimal place
- `n_observations` is the count of days with non-empty `Mean Temp (°C)` values
