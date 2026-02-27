# SoTL Coding Assessment — 16 Problems — Build Complete

## Project Overview

This is a **GitHub Classroom** template repository for a **Scholarship of Teaching and Learning (SoTL) research instrument**, not a competitive coding contest. The assessment contains:

- **12 auto-graded problems** (Problems 1-12) with expected outputs
- **4 figure generation problems** (Problems 13-16) for qualitative review
- **All problems are language-agnostic** — students may use any programming language

## Key Design Decision

**No competitive language**: All mentions of "tier", "estimated time", and "points" have been removed from problem statements. This emphasizes that the assessment is a research tool to measure student learning outcomes, not a competition.

## Repository Structure

```
sotl-coding-assessment/
├── README.md (main overview)
├── problems/
│   ├── 01-print-numbers/
│   ├── 02-csv-column-mean/
│   ├── ... (problems 3-8, existing)
│   ├── 09-word-frequency/          (NEW)
│   ├── 10-date-range-filter/       (NEW)
│   ├── 11-matrix-operations/       (NEW)
│   ├── 12-data-cleaning/           (NEW)
│   ├── 13-figure-boxplot/          (NEW)
│   ├── 14-figure-scatterplot/      (NEW)
│   ├── 15-figure-barchart/         (NEW)
│   └── 16-figure-map/              (NEW)
├── .github/
│   └── grading/
│       └── grade.sh (auto-grading script)
└── BUILD_SUMMARY.md (this file)
```

## New Problems (9-16)

### Auto-graded Problems (9-12)

#### Problem 9: Word Frequency Count
- **Input**: ecology_text.txt (~1991 words about Manitoba ecosystems)
- **Task**: Count word frequencies (case-insensitive, excluding stop words)
- **Output**: Top 20 words with frequencies, CSV format
- **Expected output**: 313 bytes, 20 rows of ranked words
- **Key skill**: Text processing, sorting with ties

#### Problem 10: Date Range Filtering
- **Input**: field_observations.csv (500 wildlife observations with UTC timestamps)
- **Task**: Filter to date range (2025-06-15 to 2025-08-31) in CST (UTC-6), count observations per day
- **Output**: Daily observation counts in CST, CSV format
- **Expected output**: 840 bytes, 25-30 rows depending on data
- **Key skill**: Timezone conversion, date filtering, aggregation

#### Problem 11: Matrix Operations
- **Input**: matrix_a.csv, matrix_b.csv (4×4 matrices with random integers)
- **Task**: Compute product, transpose of product, determinant of product
- **Output**: Three files (product.csv, transpose.csv, determinant.txt)
- **Expected output**: ~57 bytes per CSV, 14 bytes for determinant
- **Key skill**: Linear algebra, numerical computation

#### Problem 12: Data Validation & Cleaning
- **Input**: messy_data.csv (100 rows with mixed formats, units, missing values)
- **Task**: Standardize dates, distances, temperatures; handle missing values
- **Output**: Cleaned CSV with consistent formatting
- **Expected output**: 2576 bytes, 100 rows
- **Key skill**: Data cleaning, pattern matching, type conversion

### Figure Problems (13-16) — Qualitative Review

#### Problem 13: Boxplot
- **Data source**: Weather data from Problem 2
- **Task**: Create publication-quality boxplot of temperatures by station
- **Requirements**: Proper labels, colorblind-friendly palette, 89mm width
- **Output**: boxplot.png
- **Evaluated on**: Axis labels, title, aesthetics, legibility

#### Problem 14: Scatterplot
- **Data source**: Observations data from Problem 5
- **Task**: Scatterplot of temperature vs. snow depth, colored by station, with trend line
- **Requirements**: Legend, labels with units, trend line, transparency for overplotting
- **Output**: scatterplot.png
- **Evaluated on**: Data representation, clarity, trend line quality

#### Problem 15: Bar Chart
- **Data source**: Log file from Problem 4
- **Task**: Grouped bar chart of HTTP status codes by log level
- **Requirements**: Proper sorting, legend, error codes highlighted
- **Output**: barchart.png
- **Evaluated on**: Grouping clarity, labeling, error indication

#### Problem 16: Map
- **Data source**: Stations from Problem 5, points from Problem 8
- **Task**: Map of Manitoba showing station locations and point categories
- **Requirements**: North arrow, scale bar, coordinate grid, labels
- **Output**: map.png
- **Evaluated on**: Accuracy, cartographic elements, aesthetics

## Data Generation

All input data was generated with **seed 42** for reproducibility:

- **Problem 9**: Real ecological prose manually written (~2000 words)
- **Problem 10**: Python random timestamps + wildlife species
- **Problem 11**: Random 4×4 matrices (numpy arrays)
- **Problem 12**: Deliberate data quality issues (mixed formats, missing values)

## Expected Outputs

Auto-graded problems have expected outputs in `expected/` subdirectories:

```
problems/09-word-frequency/expected/output.csv        313 bytes
problems/10-date-range-filter/expected/output.csv     840 bytes
problems/11-matrix-operations/expected/
  ├─ product.csv                                       57 bytes
  ├─ transpose.csv                                     57 bytes
  └─ determinant.txt                                   14 bytes
problems/12-data-cleaning/expected/output.csv       2,576 bytes
```

## Grading

The grading script (`.github/grading/grade.sh`) does the following:

1. **For Problems 1-12**: Compares student output to expected output using `diff`
2. **For Problems 13-16**: Checks that PNG files exist (content reviewed manually)
3. **Summary output**: "X/12 auto-graded passed" and "Y/4 figures submitted"

### Example Output
```
========================================
SoTL Coding Assessment — Auto Grading
========================================

PASS: Problem 1 — Print Numbers
PASS: Problem 2 — CSV Column Mean
...
SUBMITTED: Problem 13 — Boxplot
...

========================================
SUMMARY
========================================
Auto-graded: 12/12 passed
Figures submitted: 4/4
========================================
```

## Starter Templates

All 16 problems have optional starter templates in `starters/` for both Python and R:

- `starters/solution.py` — Python template
- `starters/solution.R` — R template

Students are **not required** to use these templates. They may work in any language.

## Files Modified from Original

1. **README.md** — Replaced with 16-problem overview
2. **All 8 existing problem READMEs** — Removed tier, points, time estimates
3. **.github/grading/grade.sh** — Updated to check all 16 problems

## Files Created

### Problem Directories
```
problems/09-word-frequency/
  ├─ README.md
  ├─ input/ecology_text.txt
  ├─ expected/output.csv
  └─ starters/(solution.py, solution.R)

problems/10-date-range-filter/
  ├─ README.md
  ├─ input/field_observations.csv
  ├─ expected/output.csv
  └─ starters/(solution.py, solution.R)

problems/11-matrix-operations/
  ├─ README.md
  ├─ input/(matrix_a.csv, matrix_b.csv)
  ├─ expected/(product.csv, transpose.csv, determinant.txt)
  └─ starters/(solution.py, solution.R)

problems/12-data-cleaning/
  ├─ README.md
  ├─ input/messy_data.csv
  ├─ expected/output.csv
  └─ starters/(solution.py, solution.R)

problems/13-figure-boxplot/
  ├─ README.md
  ├─ examples/criteria.txt
  └─ starters/(solution.py, solution.R)

problems/14-figure-scatterplot/
  ├─ README.md
  ├─ examples/criteria.txt
  └─ starters/(solution.py, solution.R)

problems/15-figure-barchart/
  ├─ README.md
  ├─ examples/criteria.txt
  └─ starters/(solution.py, solution.R)

problems/16-figure-map/
  ├─ README.md
  ├─ examples/criteria.txt
  └─ starters/(solution.py, solution.R)
```

## Usage Instructions for Students

1. Clone this repository
2. Read `README.md` for overview
3. For each problem:
   - Read `problems/NN-name/README.md` for specification
   - If available, use data from `problems/NN-name/input/`
   - Solve the problem in any language
   - Save output to the specified location
4. For auto-graded problems (1-12): Commit and push to trigger GitHub Actions
5. For figure problems (13-16): Create PNG files and commit

## Technical Details

- **Language**: Bash (grading script), Python (data generation)
- **Data formats**: CSV, TXT, PNG
- **Reproducibility**: All random data uses seed 42
- **No external dependencies**: All input data generated, no API calls
- **Portable**: Works on any system with bash and Python 3

## Assessment Philosophy

This template embodies the following SoTL principles:

1. **Inclusive language**: No "points" or "tiers" that emphasize competition
2. **Multiple skill levels**: Problems range from basic (print numbers) to advanced (geographic queries)
3. **Creative expression**: Figure generation problems allow for artistic/professional judgment
4. **Language flexibility**: Any language works; only outputs are graded
5. **Authentic tasks**: Problems reflect real data analysis workflows
6. **Research value**: Data and outputs can be used for studying teaching effectiveness

## Location

All files are located at:
```
/sessions/happy-upbeat-bardeen/mnt/SOTL2026/sotl-coding-assessment/
```

## Verification Checklist

- [x] 16 problem directories created
- [x] All READMEs updated (no tier/points/time)
- [x] Input data generated for problems 9-12
- [x] Expected outputs generated for problems 9-12
- [x] Starter templates created (16 problems × 2 languages = 32 files)
- [x] Figure criteria descriptions created
- [x] Main README updated
- [x] Grading script updated and tested
- [x] Ecology text expanded to ~2000 words
- [x] All data generated with seed 42

## Build Information

- **Build date**: 2026-02-27
- **Created by**: Claude Code Assistant
- **Status**: Ready for deployment to GitHub Classroom
