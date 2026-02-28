# Problem 19: Animate Ice Buoy Movement (Stretch Goal)

## Specification
Create an **animation** showing the movement of a single ice beacon from the BaySys Ice Beacon dataset over time.

Your task:
1. Download tracking data for **one beacon** from the CanWIN ERDDAP server (same dataset as Problem 18)
2. Create an animated visualization showing the beacon's position moving over time on a map or coordinate plot

**ERDDAP Details:**
- Server: `https://canwinerddap.ad.umanitoba.ca/erddap`
- Dataset ID: `BaySys_IceBeacon_data_9484_28fc_f86c`
- Choose any single beacon and any time range with enough data points to show movement

## Requirements
- The animation must show the beacon moving through its positions over time
- Include a timestamp or time indicator so the viewer can track temporal progression
- The trail of previous positions should be visible (breadcrumb trail or fading path)
- Include axis labels or map context so the viewer understands the geographic area
- Output must be an animation file format: GIF, MP4, or HTML with embedded animation

## Output
Save to: `problems/19-buoy-animation/animation.gif` (or `.mp4` or `.html`)

## Hints
- Python: `matplotlib.animation`, `cartopy`, `folium` with `TimestampedGeoJson`
- R: `gganimate`, `leaflet` with `addCircleMarkers`
- Any tool or language is acceptable — the output file is what matters
- A simple lat/lon scatter plot with animated points is fine; a proper map background is a bonus

## Grading
This is a **stretch goal** — it is checked for file existence and reviewed qualitatively. There is no auto-graded expected output.
