# SoTL Coding Assessment - Quick Navigation

## Assessment Overview
- **Total Problems:** 8
- **Total Points:** 100
- **Time Limit:** ~2 hours
- **Language:** Any (output-based grading)

## Quick Links to Problems

### Easy Tier (1-2 min total)
| Problem | Difficulty | Points | Time | Location |
|---------|-----------|--------|------|----------|
| [Print Numbers](problems/01-print-numbers/README.md) | Trivial | 5 | 1-2 min | `problems/01-print-numbers/` |

### Easy Tier (3-10 min total)
| Problem | Difficulty | Points | Time | Location |
|---------|-----------|--------|------|----------|
| [CSV Column Mean](problems/02-csv-column-mean/README.md) | Easy | 10 | 3-5 min | `problems/02-csv-column-mean/` |
| [Filter and Aggregate](problems/03-filter-and-aggregate/README.md) | Easy | 15 | 5-10 min | `problems/03-filter-and-aggregate/` |

### Medium Tier (10-25 min total)
| Problem | Difficulty | Points | Time | Location |
|---------|-----------|--------|------|----------|
| [String Parsing](problems/04-string-parsing/README.md) | Medium | 15 | 10-15 min | `problems/04-string-parsing/` |
| [Merge and Summarize](problems/05-merge-and-summarize/README.md) | Medium | 20 | 15-25 min | `problems/05-merge-and-summarize/` |
| [Moving Average](problems/06-moving-average/README.md) | Medium | 15 | 15-25 min | `problems/06-moving-average/` |

### Hard Tier (20-40 min total)
| Problem | Difficulty | Points | Time | Location |
|---------|-----------|--------|------|----------|
| [Debug Off-by-One](problems/07-debug-off-by-one/README.md) | Hard | 10 | 20-40 min | `problems/07-debug-off-by-one/` |
| [Optimize Search](problems/08-optimize-search/README.md) | Hard | 10 | 20-40 min | `problems/08-optimize-search/` |

## Getting Started

### Before You Start
1. Read the [main README](README.md) for overview
2. Understand that only your **output files** are graded
3. You can use **any programming language**
4. Optional starter templates are provided in Python and R

### How to Solve a Problem
1. Navigate to the problem folder (e.g., `problems/01-print-numbers/`)
2. Read the `README.md` for the specification
3. Look at `input/` folder for any input data
4. (Optional) Use a starter template from `starters/`
5. Write your solution in your preferred language
6. Save your output to the exact path specified
7. Commit and push your changes
8. Check the "Actions" tab for your grade

### Example: Problem 2
```
1. Read: problems/02-csv-column-mean/README.md
2. Input: problems/02-csv-column-mean/input/weather.csv
3. Starter: problems/02-csv-column-mean/starters/starter.py (optional)
4. Output: problems/02-csv-column-mean/output.txt
5. Expected: Single value (mean temperature, 2 decimals)
```

## Grading

### Automatic Grading
- Your code is **not** graded
- Only your output files are evaluated
- Grading happens automatically on push
- See results in the "Actions" tab

### Scoring
- **Problem 1:** 5 points
- **Problem 2:** 10 points  
- **Problem 3:** 15 points
- **Problem 4:** 15 points
- **Problem 5:** 20 points
- **Problem 6:** 15 points
- **Problem 7:** 10 points
- **Problem 8:** 10 points
- **Total:** 100 points

## Key Files

### Documentation
- `README.md` - Main assessment overview
- `REPOSITORY_SUMMARY.md` - Detailed documentation
- `INDEX.md` - This file

### Grading Infrastructure
- `.github/grading/grade.sh` - Grading script
- `.github/workflows/autograding.yml` - GitHub Actions workflow
- `.github/classroom/autograding.json` - Classroom configuration

### Problems (8 folders)
```
problems/
├── 01-print-numbers/
├── 02-csv-column-mean/
├── 03-filter-and-aggregate/
├── 04-string-parsing/
├── 05-merge-and-summarize/
├── 06-moving-average/
├── 07-debug-off-by-one/
└── 08-optimize-search/
```

Each problem folder contains:
- `README.md` - Problem specification
- `starters/` - Optional Python and R templates
- `input/` - Input data (if applicable)
- `expected/` - Expected output (for grading only)

## Rules

1. You may use **any programming language**
2. Only your **output files** are graded (not your code)
3. Internet access is allowed for documentation lookups
4. Commit and push frequently
5. Only your **latest push** is graded
6. You have **~2 hours** for all problems (solve what you can)

## Tips for Success

### Problem 1-3: Start Here
- Quick wins to build confidence
- Test the grading system
- Establish your workflow

### Problem 4-6: Steady Progress
- More complex data processing
- Real-world algorithm challenges
- Build on earlier problem skills

### Problem 7-8: Advanced
- Challenging debugging and optimization
- Significant data (50K+ points)
- Requires careful algorithm design

### General Tips
- Start with the easiest problems first
- Each problem is independent
- Don't spend too long on hard problems initially
- Return to hard problems once easier ones are done
- The grader is forgiving about different output formats for CSV files

## Troubleshooting

### Output File Not Found
- Check the exact file path in the problem README
- Verify your output location matches exactly
- Remember: paths are case-sensitive on Linux

### Numeric Precision Issues
- Match the decimal places specified in the problem
- Use standard rounding (round half up)
- Problem 2 allows ±0.01 tolerance

### CSV File Issues
- Include the header row
- Use standard CSV format (comma-separated)
- The grader sorts rows, so order doesn't matter

### Multiple Attempts
- You can push as many times as you want
- Only the latest push is graded
- Take advantage of this to refine your solutions

## Assessment Flow

```
Start Assessment (2 hours)
        ↓
Read Problem README
        ↓
Examine Input Data
        ↓
Write Solution (any language)
        ↓
Save Output to Specified Location
        ↓
Commit & Push
        ↓
Check "Actions" Tab for Grade
        ↓
If not satisfied:
   - Refine solution
   - Commit & push again
   - See updated grade
        ↓
Repeat for Next Problem
```

## Questions?

Refer to:
1. Problem README (specific details)
2. Starter templates (code structure)
3. REPOSITORY_SUMMARY.md (technical details)
4. This file (navigation and tips)

---

**Ready to start? Begin with [Problem 1: Print Numbers](problems/01-print-numbers/README.md)**
