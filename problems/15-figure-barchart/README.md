# Problem 15: Bar Chart — HTTP Status by Log Level

## Specification
Using the server log file from Problem 4 (`problems/04-string-parsing/input/logfile.txt`), create a **publication-quality grouped bar chart** showing the count of HTTP status codes, grouped by log level (ERROR, INFO, WARN).

## Requirements
- **Grouping**: Status codes on X-axis, log levels as separate bars within each status category
- **Axis labels**: X-axis "HTTP Status Code", Y-axis "Count"
- **Title**: "HTTP Status Codes by Log Level"
- **Sorted categories**: X-axis sorted by status code value (400 < 401 < 500, etc.)
- **Legend**: Clear identification of log levels (ERROR, INFO, WARN)
- **Error context**: Make it visually clear which status codes represent errors (400+)
- **Clean aesthetics**: Professional appearance suitable for publication

## Output
Save your figure as: `problems/15-figure-barchart/barchart.png`
