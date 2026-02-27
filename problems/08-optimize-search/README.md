# Problem 8: Optimize Search (10 points)

**Tier:** Hard | **Est. time:** 20-40 minutes

## Specification
You are given a dataset of 50,000 geographic points (`input/points.csv`) with columns: `id`, `lat`, `lon`, `category`.

For each of 100 query points in `input/queries.csv` (columns: `query_id`, `lat`, `lon`, `radius_km`):
Find all points from `points.csv` that are within `radius_km` kilometers of the query point using the Haversine formula.

## Output
Save to: `problems/08-optimize-search/output.csv`

```
query_id,point_id
1,4523
1,4891
1,12003
2,891
...
```

Sorted first by `query_id` ascending, then by `point_id` ascending. Only include pairs where the point is within the specified radius.

## Notes
- Use the Haversine formula with Earth radius = 6371.0 km
- A brute-force solution will work but will be slow. An optimized solution using spatial indexing or bounding-box pre-filtering will be much faster.
- Both approaches should produce the same output — correctness is what's graded, not speed.
