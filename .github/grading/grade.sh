#!/bin/bash

# Grading script for SoTL AI-Assisted Coding Assessment
# This script checks all 20 problems and produces a report.

BASE_DIR="$(cd "$(dirname "$0")/../.." && pwd)"
PROBLEMS_DIR="$BASE_DIR/problems"

# Initialize counters
AUTO_PASSED=0
AUTO_TOTAL=14
FIGURES_SUBMITTED=0
FIGURES_TOTAL=4
API_PASSED=0
API_TOTAL=2

# Function to compare files
compare_files() {
    local output="$1"
    local expected="$2"
    local problem="$3"
    
    if [ ! -f "$output" ]; then
        echo "FAIL: $problem — Output file not found"
        return 1
    fi
    
    if [ ! -f "$expected" ]; then
        echo "ERROR: $problem — Expected output file not found"
        return 1
    fi
    
    # Use diff with appropriate flags for CSV
    if diff -q <(sort "$output") <(sort "$expected") > /dev/null 2>&1; then
        echo "PASS: $problem"
        return 0
    else
        echo "FAIL: $problem — Output does not match expected"
        return 1
    fi
}

# Function to compare CSV files more flexibly
compare_csv() {
    local output="$1"
    local expected="$2"
    local problem="$3"
    
    if [ ! -f "$output" ]; then
        echo "FAIL: $problem — Output file not found"
        return 1
    fi
    
    if [ ! -f "$expected" ]; then
        echo "ERROR: $problem — Expected output file not found"
        return 1
    fi
    
    # Simple line-by-line comparison
    if diff -q "$output" "$expected" > /dev/null 2>&1; then
        echo "PASS: $problem"
        return 0
    else
        echo "FAIL: $problem — Output does not match expected"
        return 1
    fi
}

echo "========================================"
echo "SoTL Coding Assessment — Auto Grading"
echo "========================================"
echo ""

# Problem 1: Print Numbers
if [ -f "$PROBLEMS_DIR/01-print-numbers/output.txt" ]; then
    if [ $(wc -l < "$PROBLEMS_DIR/01-print-numbers/output.txt") -eq 1000 ]; then
        head_val=$(head -1 "$PROBLEMS_DIR/01-print-numbers/output.txt")
        tail_val=$(tail -1 "$PROBLEMS_DIR/01-print-numbers/output.txt")
        if [ "$head_val" == "1" ] && [ "$tail_val" == "1000" ]; then
            echo "PASS: Problem 1 — Print Numbers"
            ((AUTO_PASSED++))
        else
            echo "FAIL: Problem 1 — Print Numbers (incorrect values)"
        fi
    else
        echo "FAIL: Problem 1 — Print Numbers (wrong number of lines)"
    fi
else
    echo "MISSING: Problem 1 — Print Numbers"
fi

# Problem 2: CSV Column Mean
if [ -f "$PROBLEMS_DIR/02-csv-column-mean/output.txt" ]; then
    if [ -f "$PROBLEMS_DIR/02-csv-column-mean/expected/output.txt" ]; then
        if diff -q "$PROBLEMS_DIR/02-csv-column-mean/output.txt" "$PROBLEMS_DIR/02-csv-column-mean/expected/output.txt" > /dev/null 2>&1; then
            echo "PASS: Problem 2 — CSV Column Mean"
            ((AUTO_PASSED++))
        else
            echo "FAIL: Problem 2 — CSV Column Mean"
        fi
    else
        echo "MISSING: Problem 2 — Expected output not found"
    fi
else
    echo "MISSING: Problem 2 — CSV Column Mean"
fi

# Problem 3: Filter and Aggregate
if [ -f "$PROBLEMS_DIR/03-filter-and-aggregate/output.csv" ]; then
    if [ -f "$PROBLEMS_DIR/03-filter-and-aggregate/expected/output.csv" ]; then
        if diff -q "$PROBLEMS_DIR/03-filter-and-aggregate/output.csv" "$PROBLEMS_DIR/03-filter-and-aggregate/expected/output.csv" > /dev/null 2>&1; then
            echo "PASS: Problem 3 — Filter and Aggregate"
            ((AUTO_PASSED++))
        else
            echo "FAIL: Problem 3 — Filter and Aggregate"
        fi
    fi
else
    echo "MISSING: Problem 3 — Filter and Aggregate"
fi

# Problem 4: String Parsing
if [ -f "$PROBLEMS_DIR/04-string-parsing/output.txt" ]; then
    if [ -f "$PROBLEMS_DIR/04-string-parsing/expected/output.txt" ]; then
        if diff -q "$PROBLEMS_DIR/04-string-parsing/output.txt" "$PROBLEMS_DIR/04-string-parsing/expected/output.txt" > /dev/null 2>&1; then
            echo "PASS: Problem 4 — String Parsing"
            ((AUTO_PASSED++))
        else
            echo "FAIL: Problem 4 — String Parsing"
        fi
    fi
else
    echo "MISSING: Problem 4 — String Parsing"
fi

# Problem 5: Merge and Summarize
if [ -f "$PROBLEMS_DIR/05-merge-and-summarize/output.csv" ]; then
    if [ -f "$PROBLEMS_DIR/05-merge-and-summarize/expected/output.csv" ]; then
        if diff -q "$PROBLEMS_DIR/05-merge-and-summarize/output.csv" "$PROBLEMS_DIR/05-merge-and-summarize/expected/output.csv" > /dev/null 2>&1; then
            echo "PASS: Problem 5 — Merge and Summarize"
            ((AUTO_PASSED++))
        else
            echo "FAIL: Problem 5 — Merge and Summarize"
        fi
    fi
else
    echo "MISSING: Problem 5 — Merge and Summarize"
fi

# Problem 6: Moving Average
if [ -f "$PROBLEMS_DIR/06-moving-average/output.csv" ]; then
    if [ -f "$PROBLEMS_DIR/06-moving-average/expected/output.csv" ]; then
        if diff -q "$PROBLEMS_DIR/06-moving-average/output.csv" "$PROBLEMS_DIR/06-moving-average/expected/output.csv" > /dev/null 2>&1; then
            echo "PASS: Problem 6 — Moving Average"
            ((AUTO_PASSED++))
        else
            echo "FAIL: Problem 6 — Moving Average"
        fi
    fi
else
    echo "MISSING: Problem 6 — Moving Average"
fi

# Problem 7: Debug Off-by-One
if [ -f "$PROBLEMS_DIR/07-debug-off-by-one/output.csv" ]; then
    if [ -f "$PROBLEMS_DIR/07-debug-off-by-one/expected/output.csv" ]; then
        if diff -q "$PROBLEMS_DIR/07-debug-off-by-one/output.csv" "$PROBLEMS_DIR/07-debug-off-by-one/expected/output.csv" > /dev/null 2>&1; then
            echo "PASS: Problem 7 — Debug Off-by-One"
            ((AUTO_PASSED++))
        else
            echo "FAIL: Problem 7 — Debug Off-by-One"
        fi
    fi
else
    echo "MISSING: Problem 7 — Debug Off-by-One"
fi

# Problem 8: Optimize Search
if [ -f "$PROBLEMS_DIR/08-optimize-search/output.csv" ]; then
    if [ -f "$PROBLEMS_DIR/08-optimize-search/expected/output.csv" ]; then
        if diff -q "$PROBLEMS_DIR/08-optimize-search/output.csv" "$PROBLEMS_DIR/08-optimize-search/expected/output.csv" > /dev/null 2>&1; then
            echo "PASS: Problem 8 — Optimize Search"
            ((AUTO_PASSED++))
        else
            echo "FAIL: Problem 8 — Optimize Search"
        fi
    fi
else
    echo "MISSING: Problem 8 — Optimize Search"
fi

# Problem 9: Word Frequency Count
if [ -f "$PROBLEMS_DIR/09-word-frequency/output.csv" ]; then
    if [ -f "$PROBLEMS_DIR/09-word-frequency/expected/output.csv" ]; then
        if diff -q "$PROBLEMS_DIR/09-word-frequency/output.csv" "$PROBLEMS_DIR/09-word-frequency/expected/output.csv" > /dev/null 2>&1; then
            echo "PASS: Problem 9 — Word Frequency Count"
            ((AUTO_PASSED++))
        else
            echo "FAIL: Problem 9 — Word Frequency Count"
        fi
    fi
else
    echo "MISSING: Problem 9 — Word Frequency Count"
fi

# Problem 10: Date Range Filtering
if [ -f "$PROBLEMS_DIR/10-date-range-filter/output.csv" ]; then
    if [ -f "$PROBLEMS_DIR/10-date-range-filter/expected/output.csv" ]; then
        if diff -q "$PROBLEMS_DIR/10-date-range-filter/output.csv" "$PROBLEMS_DIR/10-date-range-filter/expected/output.csv" > /dev/null 2>&1; then
            echo "PASS: Problem 10 — Date Range Filtering"
            ((AUTO_PASSED++))
        else
            echo "FAIL: Problem 10 — Date Range Filtering"
        fi
    fi
else
    echo "MISSING: Problem 10 — Date Range Filtering"
fi

# Problem 11: Matrix Operations
if [ -f "$PROBLEMS_DIR/11-matrix-operations/product.csv" ] && [ -f "$PROBLEMS_DIR/11-matrix-operations/transpose.csv" ] && [ -f "$PROBLEMS_DIR/11-matrix-operations/determinant.txt" ]; then
    # Check if outputs exist and are non-empty
    if [ -s "$PROBLEMS_DIR/11-matrix-operations/product.csv" ] && [ -s "$PROBLEMS_DIR/11-matrix-operations/transpose.csv" ] && [ -s "$PROBLEMS_DIR/11-matrix-operations/determinant.txt" ]; then
        echo "PASS: Problem 11 — Matrix Operations (output files present)"
        ((AUTO_PASSED++))
    else
        echo "FAIL: Problem 11 — Matrix Operations (output files empty)"
    fi
else
    echo "MISSING: Problem 11 — Matrix Operations"
fi

# Problem 12: Data Cleaning
if [ -f "$PROBLEMS_DIR/12-data-cleaning/output.csv" ]; then
    if [ -f "$PROBLEMS_DIR/12-data-cleaning/expected/output.csv" ]; then
        if diff -q "$PROBLEMS_DIR/12-data-cleaning/output.csv" "$PROBLEMS_DIR/12-data-cleaning/expected/output.csv" > /dev/null 2>&1; then
            echo "PASS: Problem 12 — Data Validation & Cleaning"
            ((AUTO_PASSED++))
        else
            echo "FAIL: Problem 12 — Data Validation & Cleaning"
        fi
    fi
else
    echo "MISSING: Problem 12 — Data Validation & Cleaning"
fi

echo ""
echo "========================================"
echo "DATA ACQUISITION PROBLEMS"
echo "========================================"
echo ""

# Problem 19: Weather Data Download
if [ -f "$PROBLEMS_DIR/19-weather-data-download/output.csv" ]; then
    if [ -f "$PROBLEMS_DIR/19-weather-data-download/expected/output.csv" ]; then
        if diff -q "$PROBLEMS_DIR/19-weather-data-download/output.csv" "$PROBLEMS_DIR/19-weather-data-download/expected/output.csv" > /dev/null 2>&1; then
            echo "PASS: Problem 19 — Weather Data Download"
            ((AUTO_PASSED++))
        else
            echo "FAIL: Problem 19 — Weather Data Download"
        fi
    fi
else
    echo "MISSING: Problem 19 — Weather Data Download"
fi

# Problem 20: CanWIN API
if [ -f "$PROBLEMS_DIR/20-canwin-api/output.csv" ]; then
    if [ -f "$PROBLEMS_DIR/20-canwin-api/expected/validate.sh" ]; then
        RESULT=$(bash "$PROBLEMS_DIR/20-canwin-api/expected/validate.sh" "$PROBLEMS_DIR/20-canwin-api/output.csv")
        if echo "$RESULT" | grep -q "^PASS"; then
            echo "PASS: Problem 20 — CanWIN API ($RESULT)"
            ((AUTO_PASSED++))
        else
            echo "FAIL: Problem 20 — CanWIN API ($RESULT)"
        fi
    fi
else
    echo "MISSING: Problem 20 — CanWIN API"
fi

echo ""
echo "========================================"
echo "FIGURE SUBMISSIONS (Qualitative Review)"
echo "========================================"
echo ""

# Problem 13: Boxplot
if [ -f "$PROBLEMS_DIR/13-figure-boxplot/boxplot.png" ]; then
    echo "SUBMITTED: Problem 13 — Boxplot"
    ((FIGURES_SUBMITTED++))
else
    echo "NOT SUBMITTED: Problem 13 — Boxplot"
fi

# Problem 14: Scatterplot
if [ -f "$PROBLEMS_DIR/14-figure-scatterplot/scatterplot.png" ]; then
    echo "SUBMITTED: Problem 14 — Scatterplot"
    ((FIGURES_SUBMITTED++))
else
    echo "NOT SUBMITTED: Problem 14 — Scatterplot"
fi

# Problem 15: Bar Chart
if [ -f "$PROBLEMS_DIR/15-figure-barchart/barchart.png" ]; then
    echo "SUBMITTED: Problem 15 — Bar Chart"
    ((FIGURES_SUBMITTED++))
else
    echo "NOT SUBMITTED: Problem 15 — Bar Chart"
fi

# Problem 16: Map
if [ -f "$PROBLEMS_DIR/16-figure-map/map.png" ]; then
    echo "SUBMITTED: Problem 16 — Map"
    ((FIGURES_SUBMITTED++))
else
    echo "NOT SUBMITTED: Problem 16 — Map"
fi

echo ""
echo "========================================"
echo "SUMMARY"
echo "========================================"
echo "Auto-graded: $AUTO_PASSED/$AUTO_TOTAL passed"
echo "Figures submitted: $FIGURES_SUBMITTED/$FIGURES_TOTAL"
echo "Data acquisition: included in auto-graded count"
echo "========================================"

