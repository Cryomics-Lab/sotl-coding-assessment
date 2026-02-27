#!/bin/bash
# Auto-grading script for SoTL Coding Assessment
# Compares participant output to expected output

TOTAL=0
MAX=100
RESULTS=""

grade_exact() {
    local name="$1" points="$2" expected="$3" actual="$4"
    if [ ! -f "$actual" ]; then
        RESULTS+="$name: 0/$points (no output file)\n"
        return
    fi
    if diff -q <(sed 's/[[:space:]]*$//' "$expected" | sed '/^$/d') \
                <(sed 's/[[:space:]]*$//' "$actual" | sed '/^$/d') > /dev/null 2>&1; then
        TOTAL=$((TOTAL + points))
        RESULTS+="$name: $points/$points\n"
    else
        RESULTS+="$name: 0/$points\n"
    fi
}

grade_numeric() {
    local name="$1" points="$2" expected="$3" actual="$4" tolerance="$5"
    if [ ! -f "$actual" ]; then
        RESULTS+="$name: 0/$points (no output file)\n"
        return
    fi
    local exp_val=$(cat "$expected" | tr -d '[:space:]')
    local act_val=$(cat "$actual" | tr -d '[:space:]')
    local diff=$(python3 -c "print(abs(float('$exp_val') - float('$act_val')) <= float('$tolerance'))" 2>/dev/null)
    if [ "$diff" = "True" ]; then
        TOTAL=$((TOTAL + points))
        RESULTS+="$name: $points/$points\n"
    else
        RESULTS+="$name: 0/$points (expected $exp_val, got $act_val)\n"
    fi
}

grade_csv() {
    local name="$1" points="$2" expected="$3" actual="$4"
    if [ ! -f "$actual" ]; then
        RESULTS+="$name: 0/$points (no output file)\n"
        return
    fi
    # Sort both CSVs (keeping header) and compare
    local exp_sorted=$(head -1 "$expected"; tail -n +2 "$expected" | sort)
    local act_sorted=$(head -1 "$actual"; tail -n +2 "$actual" | sort)
    if diff -q <(echo "$exp_sorted" | sed 's/[[:space:]]*$//') \
                <(echo "$act_sorted" | sed 's/[[:space:]]*$//') > /dev/null 2>&1; then
        TOTAL=$((TOTAL + points))
        RESULTS+="$name: $points/$points\n"
    else
        RESULTS+="$name: 0/$points\n"
    fi
}

echo "====================================="
echo "SoTL Coding Assessment - Auto-Grader"
echo "====================================="
echo ""

grade_exact  "P1: Print Numbers"      5  "problems/01-print-numbers/expected/output.txt"       "problems/01-print-numbers/output.txt"
grade_numeric "P2: CSV Column Mean"   10  "problems/02-csv-column-mean/expected/output.txt"     "problems/02-csv-column-mean/output.txt" "0.01"
grade_csv    "P3: Filter & Aggregate" 15  "problems/03-filter-and-aggregate/expected/output.csv" "problems/03-filter-and-aggregate/output.csv"
grade_exact  "P4: String Parsing"     15  "problems/04-string-parsing/expected/output.txt"       "problems/04-string-parsing/output.txt"
grade_csv    "P5: Merge & Summarize"  20  "problems/05-merge-and-summarize/expected/output.csv"  "problems/05-merge-and-summarize/output.csv"
grade_csv    "P6: Moving Average"     15  "problems/06-moving-average/expected/output.csv"       "problems/06-moving-average/output.csv"
grade_csv    "P7: Debug Off-by-One"   10  "problems/07-debug-off-by-one/expected/output.csv"     "problems/07-debug-off-by-one/output.csv"
grade_csv    "P8: Optimize Search"    10  "problems/08-optimize-search/expected/output.csv"       "problems/08-optimize-search/output.csv"

echo ""
echo -e "$RESULTS"
echo "====================================="
echo "TOTAL SCORE: $TOTAL / $MAX"
echo "====================================="
