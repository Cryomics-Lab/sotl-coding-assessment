# Problem 6: Moving Average

## Specification
Using the observations data from Problem 5 (`problems/05-merge-and-summarize/input/observations.csv`):

1. Filter to station `STN_C` (Winnipeg) only
2. Sort by date ascending
3. Compute a 7-day centered moving average of `temp_c`:
   - For each day, the moving average is the mean of that day and the 3 days before and 3 days after it
   - For days where the full 7-day window is not available (first 3 and last 3 days), output `NA`
   - If any day in the window has a missing temp value, still compute the average of the available values in that window
4. Round moving averages to 2 decimal places

## Output
Save to: `problems/06-moving-average/output.csv`

```
date,temp_c,temp_7day_ma
2025-01-01,-18.3,NA
2025-01-02,-20.1,NA
2025-01-03,-15.7,NA
2025-01-04,-22.4,-19.12
...
```
