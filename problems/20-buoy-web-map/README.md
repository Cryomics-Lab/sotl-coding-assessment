# Problem 20: Interactive Web Map — Buoy Tracker (Stretch Goal)

## Specification
Build a **lightweight, locally-served web application** that displays all BaySys ice beacons on an interactive map.

Your task:
1. Download tracking data for **all beacons** from the CanWIN ERDDAP server (same dataset as Problem 18)
2. Build a web app that serves an interactive map showing all beacon tracks
3. The app should run locally (e.g., `python -m http.server`, `flask`, `shiny`, etc.)

**ERDDAP Details:**
- Server: `https://canwinerddap.ad.umanitoba.ca/erddap`
- Dataset ID: `BaySys_IceBeacon_data_9484_28fc_f86c`

## Requirements
- Interactive map with pan and zoom (e.g., Leaflet, Mapbox, OpenLayers, or similar)
- Each beacon displayed as a distinct colored track/path
- Clicking a beacon track or point shows beacon ID and timestamp
- Legend or labels identifying each beacon
- The app must be self-contained and runnable with a single command (document this in a `RUN.md` file)

## Output
Save to: `problems/20-buoy-web-map/`

Required files:
- `index.html` — the web app (or entry point)
- `RUN.md` — instructions to launch the app (e.g., "Run `python -m http.server 8000` and open http://localhost:8000")
- Any supporting files (JS, CSS, data files) in the same directory

## Hints
- **Simplest approach**: A single `index.html` with Leaflet.js loaded from CDN, data embedded as JSON
- Python: `folium` can generate a standalone HTML file with no server needed
- R: `leaflet` + `htmlwidgets::saveWidget()` for a standalone HTML file
- More ambitious: Flask/Shiny app with time slider controls

## Grading
This is a **stretch goal** — it is checked for file existence (`index.html`) and reviewed qualitatively. There is no auto-graded expected output.
