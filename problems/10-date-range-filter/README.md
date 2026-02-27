# Problem 10: Date Range Filtering

## Specification
Read the field observations CSV at `input/field_observations.csv`. The `datetime` column contains UTC timestamps in ISO format.

Filter the data to observations between **2025-06-15 and 2025-08-31 in Central Standard Time (UTC-6)**. Then compute the count of observations per day (in CST).

Note: Convert all timestamps to CST before filtering and grouping.

## Output
Save to: `problems/10-date-range-filter/output.csv`

```
date_cst,observation_count
2025-06-15,X
2025-06-16,Y
...
```

Sorted by date ascending. Format dates as YYYY-MM-DD. Only include dates with at least one observation.
