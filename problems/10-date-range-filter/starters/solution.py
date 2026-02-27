# Problem 10 Starter (Python)

import csv
from datetime import datetime, timezone, timedelta

def main():
    # Define timezone
    cst = timezone(timedelta(hours=-6))
    
    # Read observations
    observations = []
    with open('input/field_observations.csv', 'r') as f:
        reader = csv.DictReader(f)
        observations = list(reader)
    
    # TODO: Convert datetimes to CST
    # TODO: Filter to 2025-06-15 through 2025-08-31
    # TODO: Group by date and count observations
    # TODO: Sort by date
    # TODO: Write to output.csv
    pass

if __name__ == '__main__':
    main()
