# Problem 5: Merge and Summarize (20 points)

**Tier:** Medium | **Est. time:** 15-25 minutes

## Specification
Two data files are provided:
- `input/stations.csv` — station metadata (5 stations across Manitoba)
- `input/observations.csv` — daily weather observations

Perform the following:
1. Merge the two datasets on `station_id`
2. Exclude any rows where `precip_mm` or `snow_depth_cm` is missing
3. For each station, compute:
   - `mean_temp`: mean of `temp_c`, rounded to 2 decimals
   - `total_precip`: sum of `precip_mm`, rounded to 1 decimal
   - `max_snow`: maximum `snow_depth_cm`
   - `n_obs`: count of non-missing observations used
4. Sort by `latitude` descending (northernmost first)

## Output
Save to: `problems/05-merge-and-summarize/output.csv`

Header row followed by one row per station:
```
station_name,latitude,mean_temp,total_precip,max_snow,n_obs
Churchill Station,58.7684,...,...,...,...
```
