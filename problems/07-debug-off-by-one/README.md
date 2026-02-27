# Problem 7: Debug Off-by-One (10 points)

**Tier:** Hard | **Est. time:** 20-40 minutes

## Specification
The file `buggy_code/` contains a program (available in Python and R) that is supposed to:

1. Read a time series CSV (`input/timeseries.csv`) with columns: `timestamp`, `value`
2. Detect "anomalies" — values that are more than 2 standard deviations from the mean of a sliding window of the **previous** 10 values (not including the current value)
3. Output the timestamps and values of all anomalies

The code has **3 bugs** that produce incorrect results. Find and fix them, then produce the correct output.

**Hint:** The bugs are all off-by-one or boundary-related errors. The logic and algorithm are otherwise correct.

## Output
Save to: `problems/07-debug-off-by-one/output.csv`

```
timestamp,value,window_mean,window_std
...
```

Only rows that are anomalies. Round window_mean and window_std to 4 decimal places.
