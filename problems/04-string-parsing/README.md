# Problem 4: String Parsing (15 points)

**Tier:** Medium | **Est. time:** 10-15 minutes

## Specification
Parse the server log file at `input/logfile.txt`. Each line follows this format:
```
TIMESTAMP [LEVEL] METHOD PATH STATUS RESPONSE_TIME
```

Produce a summary with the following statistics:
1. Total number of log entries
2. Count of entries per log level (ERROR, INFO, WARN), sorted alphabetically by level
3. Mean response time in milliseconds across all entries, rounded to 1 decimal place
4. Count of entries with HTTP status code >= 400 (i.e., errors)

## Output
Save to: `problems/04-string-parsing/output.txt`

Format (exactly 6 lines):
```
total_entries: NNN
ERROR: NNN
INFO: NNN
WARN: NNN
mean_response_ms: NNN.N
http_errors: NNN
```
