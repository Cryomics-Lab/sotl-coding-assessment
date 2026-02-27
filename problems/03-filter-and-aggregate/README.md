# Problem 3: Filter and Aggregate (15 points)

**Tier:** Easy | **Est. time:** 5-10 minutes

## Specification
Using the same `weather.csv` from Problem 2 (located at `problems/02-csv-column-mean/input/weather.csv`):

1. Filter to only rows where `humidity_pct >= 70`
2. Group by `station_id`
3. For each station, compute the mean `wind_speed_kmh` (rounded to 2 decimal places)
4. Sort results alphabetically by station_id

## Output
Save to: `problems/03-filter-and-aggregate/output.csv`

The output CSV should have exactly 2 columns with a header row:
```
station_id,mean_wind_speed
STN_A,XX.XX
STN_B,XX.XX
STN_C,XX.XX
```
