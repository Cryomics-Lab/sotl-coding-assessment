# Problem 20: CanWIN ERDDAP API — BaySys Ice Beacon Data

## Specification
Use the **CanWIN ERDDAP API** to download ice beacon tracking data from the BaySys project, then summarize beacon movement.

Your task:
1. Query the CanWIN ERDDAP server to download data for **all beacons** between **2017-03-01T00:00:00Z** and **2017-04-01T00:00:00Z** from the **BaySys Ice Beacon Data 2017-2018** dataset
2. Compute a summary for each beacon: total number of observations, mean latitude, mean longitude, and total distance traveled (in km, using the Haversine formula between consecutive positions)

**ERDDAP Details:**
- Server: `https://canwinerddap.ad.umanitoba.ca/erddap`
- Dataset ID: `BaySys_IceBeacon_data_9484_28fc_f86c`
- Protocol: tabledap (RESTful — construct a URL to download CSV)
- Documentation: https://canwinerddap.ad.umanitoba.ca/erddap/tabledap/documentation.html
- Data access form: https://canwinerddap.ad.umanitoba.ca/erddap/tabledap/BaySys_IceBeacon_data_9484_28fc_f86c.html

**Hints:**
- A tabledap CSV request looks like: `https://canwinerddap.ad.umanitoba.ca/erddap/tabledap/{datasetID}.csv?{variables}&{constraints}`
- Variables of interest: `time`, `latitude`, `longitude`, `beacon_ID`
- Time constraints use `&time>=2017-03-01T00:00:00Z&time<=2017-04-01T00:00:00Z`
- Python: you can use `erddapy`, `pandas`, or just `urllib`/`requests`
- R: you can use `rerddap` or just `read.csv()` on the URL

**Haversine formula:**
To compute distance between two lat/lon points, use the Haversine formula with Earth radius = 6371 km.

## Output
Save to: `problems/20-canwin-api/output.csv`

```
beacon_id,n_observations,mean_lat,mean_lon,total_distance_km
beacon_A,XXX,XX.XXX,-XX.XXX,XX.XX
beacon_B,XXX,XX.XXX,-XX.XXX,XX.XX
...
```

- One row per beacon, sorted alphabetically by `beacon_id`
- `mean_lat` and `mean_lon` rounded to 3 decimal places
- `total_distance_km` rounded to 2 decimal places (sum of Haversine distances between consecutive time-ordered positions)
- Include header row
