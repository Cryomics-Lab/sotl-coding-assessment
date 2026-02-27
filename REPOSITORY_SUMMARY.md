# SoTL Coding Assessment - Repository Summary

## Overview
This is a complete GitHub Classroom template repository for a 2-hour AI-assisted coding assessment with 8 problems of increasing difficulty testing a wide range of coding abilities.

**Location:** `/sessions/happy-upbeat-bardeen/mnt/SOTL2026/sotl-coding-assessment/`

## Repository Structure

```
sotl-coding-assessment/
├── README.md                           # Main assessment overview
├── REPOSITORY_SUMMARY.md               # This file
├── .gitignore                          # Git ignore rules
│
├── .github/
│   ├── classroom/
│   │   └── autograding.json           # GitHub Classroom auto-grading config
│   ├── workflows/
│   │   └── autograding.yml            # GitHub Actions workflow
│   └── grading/
│       └── grade.sh                   # Grading script (executable)
│
└── problems/
    ├── 01-print-numbers/
    │   ├── README.md                  # Problem specification
    │   ├── starters/
    │   │   ├── starter.py
    │   │   └── starter.R
    │   └── expected/
    │       └── output.txt             # Expected output
    │
    ├── 02-csv-column-mean/
    │   ├── README.md
    │   ├── input/
    │   │   └── weather.csv            # 365 rows of weather data
    │   ├── starters/
    │   │   ├── starter.py
    │   │   └── starter.R
    │   └── expected/
    │       └── output.txt
    │
    ├── 03-filter-and-aggregate/
    │   ├── README.md
    │   ├── starters/
    │   │   ├── starter.py
    │   │   └── starter.R
    │   └── expected/
    │       └── output.csv
    │
    ├── 04-string-parsing/
    │   ├── README.md
    │   ├── input/
    │   │   └── logfile.txt            # 200 log entries
    │   ├── starters/
    │   │   ├── starter.py
    │   │   └── starter.R
    │   └── expected/
    │       └── output.txt
    │
    ├── 05-merge-and-summarize/
    │   ├── README.md
    │   ├── input/
    │   │   ├── stations.csv           # 5 Manitoba weather stations
    │   │   └── observations.csv       # 500 observations
    │   ├── starters/
    │   │   ├── starter.py
    │   │   └── starter.R
    │   └── expected/
    │       └── output.csv
    │
    ├── 06-moving-average/
    │   ├── README.md
    │   ├── starters/
    │   │   ├── starter.py
    │   │   └── starter.R
    │   └── expected/
    │       └── output.csv
    │
    ├── 07-debug-off-by-one/
    │   ├── README.md
    │   ├── input/
    │   │   └── timeseries.csv        # 200 hourly timestamps
    │   ├── buggy_code/
    │   │   ├── buggy.py              # Buggy anomaly detector (3 bugs)
    │   │   └── buggy.R               # Buggy anomaly detector (3 bugs)
    │   ├── starters/
    │   │   ├── starter.py
    │   │   └── starter.R
    │   └── expected/
    │       └── output.csv
    │
    └── 08-optimize-search/
        ├── README.md
        ├── input/
        │   ├── points.csv            # 50,000 geographic points
        │   └── queries.csv           # 100 query points
        ├── starters/
        │   ├── starter.py
        │   └── starter.R
        └── expected/
            └── output.csv
```

## Problem Details

### Problem 1: Print Numbers (Trivial, 5 pts)
- **Time:** 1-2 minutes
- **Task:** Generate integers 1-1000, one per line
- **Output:** `problems/01-print-numbers/output.txt` (1000 lines)
- **Expected:** Plain text with 1000 numbers
- **Data:** Generated (not input-dependent)

### Problem 2: CSV Column Mean (Easy, 10 pts)
- **Time:** 3-5 minutes
- **Task:** Compute mean of `temp_c` column from weather CSV
- **Input:** `problems/02-csv-column-mean/input/weather.csv` (365 rows + header)
  - Columns: date, station_id, temp_c, humidity_pct, wind_speed_kmh
  - Stations: STN_A, STN_B, STN_C
  - Temperatures: -35 to +35°C
- **Output:** `problems/02-csv-column-mean/output.txt` (single value, 2 decimals)
- **Expected Value:** `0.40`
- **Seed:** 42

### Problem 3: Filter and Aggregate (Easy, 15 pts)
- **Time:** 5-10 minutes
- **Task:** Filter weather CSV to humidity >= 70%, group by station, compute mean wind speed
- **Input:** Same weather.csv as Problem 2
- **Output:** `problems/03-filter-and-aggregate/output.csv` (CSV with 3 station rows)
- **Expected:** Sorted by station_id alphabetically
- **Seed:** 42

### Problem 4: String Parsing (Medium, 15 pts)
- **Time:** 10-15 minutes
- **Task:** Parse 200 server log entries and compute statistics
- **Input:** `problems/04-string-parsing/input/logfile.txt` (200 lines)
  - Format: `TIMESTAMP [LEVEL] METHOD PATH STATUS RESPONSE_TIME`
  - Levels: INFO, WARN, ERROR
  - Methods: GET, POST, PUT, DELETE
  - Status codes: 200, 201, 301, 400, 404, 500
  - Response times: 10-5000ms
- **Output:** `problems/04-string-parsing/output.txt` (6-line summary)
  - total_entries, ERROR/INFO/WARN counts, mean_response_ms, http_errors (>= 400)
- **Expected:** 200 entries, specific level counts, mean ~2583.9ms, 94 errors
- **Seed:** 42

### Problem 5: Merge and Summarize (Medium, 20 pts)
- **Time:** 15-25 minutes
- **Task:** Merge stations and observations, compute per-station statistics
- **Inputs:**
  - `problems/05-merge-and-summarize/input/stations.csv` (5 Manitoba stations + header)
    - STN_A, STN_B, STN_C, STN_D, STN_E with latitudes and elevations
  - `problems/05-merge-and-summarize/input/observations.csv` (500 observations + header)
    - Dates: 2025-01-01 to 2025-06-30
    - Some missing values in precip_mm and snow_depth_cm
- **Output:** `problems/05-merge-and-summarize/output.csv`
  - Filtered to non-missing precip and snow
  - Per-station: mean_temp, total_precip, max_snow, n_obs
  - Sorted by latitude descending (northernmost first)
- **Seed:** 42

### Problem 6: Moving Average (Medium, 15 pts)
- **Time:** 15-25 minutes
- **Task:** Compute 7-day centered moving average for STN_C from observations
- **Input:** `problems/05-merge-and-summarize/input/observations.csv` (same as P5)
- **Output:** `problems/06-moving-average/output.csv`
  - Filter to STN_C (Winnipeg) only
  - Sort by date ascending
  - Compute 7-day centered moving average (day ± 3 days)
  - First 3 and last 3 days: NA (insufficient window)
  - Rounds to 2 decimals
- **Seed:** 42

### Problem 7: Debug Off-by-One (Hard, 10 pts)
- **Time:** 20-40 minutes
- **Task:** Find and fix 3 bugs in anomaly detection code
- **Input:** `problems/07-debug-off-by-one/input/timeseries.csv` (200 hourly timestamps + header)
  - Sine wave + noise with ~10 injected anomaly spikes
  - Timestamps: 2025-06-01T00:00 to 2025-06-09T07:00
- **Buggy Code:** Provided in `buggy_code/` (Python and R)
  - **Bug 1:** Window includes current value (should be previous 10 only)
  - **Bug 2:** Uses all previous values instead of just 10
  - **Bug 3:** Comparison uses >= instead of > for 2-std threshold
- **Output:** `problems/07-debug-off-by-one/output.csv`
  - Only anomalous rows: timestamp, value, window_mean, window_std
  - Rounded to 4 decimals
- **Expected:** 31 anomalies detected
- **Seed:** 42

### Problem 8: Optimize Search (Hard, 10 pts)
- **Time:** 20-40 minutes
- **Task:** Find all geographic points within radius of each query using Haversine formula
- **Inputs:**
  - `problems/08-optimize-search/input/points.csv` (50,000 points + header)
    - Columns: id, lat, lon, category
    - Categories: wetland, forest, tundra, agricultural, urban
    - Geographic bounds: 49-60°N, 88-102°W (Manitoba)
  - `problems/08-optimize-search/input/queries.csv` (100 queries + header)
    - Columns: query_id, lat, lon, radius_km
    - Radius: 5-50km
- **Output:** `problems/08-optimize-search/output.csv`
  - Columns: query_id, point_id
  - Only pairs within radius_km
  - Sorted by query_id then point_id
- **Expected:** 11548 matching pairs
- **Seeds:** points=42, queries=123
- **Algorithm:** Haversine formula, Earth radius = 6371.0 km

## Data Generation Details

All data is generated deterministically using Python with seeded randomization:

1. **Seed 42:** Problems 1-7 use seed 42 for all random generation
2. **Seed 123:** Problem 8 queries use seed 123 (points use seed 42)
3. **Reproducibility:** All input data and expected outputs are deterministic and reproducible

### Data Characteristics

- **Weather data (P2-P3, P5-P6):** Real-world Manitoba weather patterns
  - Northern stations colder in winter
  - Missing data patterns typical of real sensor networks
- **Log data (P4):** Realistic server logs with varied status codes and response times
- **Observations (P5-P6):** 181-day period with seasonal patterns
- **Time series (P7):** Smooth sine wave with noise and injected anomalies
- **Geographic data (P8):** Realistic Manitoba geography (49-60°N, 88-102°W)

## Grading System

### Grading Script: `.github/grading/grade.sh`

The script compares participant outputs to expected outputs using:

- **`grade_exact`:** Exact text match (Problems 1, 4)
  - Strips trailing whitespace and empty lines
  - Used for deterministic text output
  
- **`grade_numeric`:** Numeric comparison with tolerance (Problem 2)
  - Tolerance: 0.01 (allows for minor floating-point differences)
  - Used for single numeric values
  
- **`grade_csv`:** CSV comparison with header preservation (Problems 3, 5-8)
  - Sorts both CSVs by content (keeping headers)
  - Allows for different row ordering in output
  - Used for tabular data

### Scoring

| Problem | Type | Points | Function |
|---------|------|--------|----------|
| 1 | Trivial | 5 | grade_exact |
| 2 | Easy | 10 | grade_numeric |
| 3 | Easy | 15 | grade_csv |
| 4 | Medium | 15 | grade_exact |
| 5 | Medium | 20 | grade_csv |
| 6 | Medium | 15 | grade_csv |
| 7 | Hard | 10 | grade_csv |
| 8 | Hard | 10 | grade_csv |
| **Total** | - | **100** | - |

### GitHub Actions Workflow

- **Trigger:** Push to main/master or pull request
- **Runtime:** Ubuntu latest with Python 3.11
- **Timeout:** 10 minutes
- **Output:** Pass/fail with score breakdown

## Starter Templates

Each problem provides optional starter templates in both Python and R:

- **Python starters:** Basic imports and file I/O setup
- **R starters:** Data loading code

Students are **not required** to use these templates and may work in any programming language.

## Workflow for Students

1. Fork the repository on GitHub Classroom
2. For each problem:
   - Read `problems/XX-problem-name/README.md`
   - Read input data if provided
   - Write solution in any language
   - Save output to specified location
   - Commit and push
3. Check "Actions" tab to see auto-grading results
4. Can push multiple times; only latest push is graded

## Key Features

- **Language-agnostic:** Tests only output, not code
- **Deterministic:** All inputs and expected outputs are reproducible
- **Scalable difficulty:** 1-5min (P1) to 20-40min (P7, P8)
- **Real-world data:** Based on actual Manitoba geographic/weather patterns
- **Comprehensive:** Tests parsing, aggregation, statistics, algorithms, debugging
- **Accessible starters:** Optional Python/R templates to help students get started
- **Robust grading:** Handles different output formats and row orderings

## Testing the Repository

The repository has been tested with:
1. Complete data generation (seed 42 and 123)
2. Grading script validation with sample solutions
3. File integrity verification (correct line counts, formats)
4. CSV structure validation (headers, column counts)
5. Numeric value verification (expected outputs match computed values)

All expected outputs have been computed from actual generated data to ensure correctness.
