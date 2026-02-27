# Problem 12 Starter (Python)

import csv
import re
from datetime import datetime

MISSING_VALUES = {'NA', 'N/A', '-999', '', 'null', 'missing'}

def parse_date(date_str):
    """Parse a date string in multiple formats."""
    if not date_str or date_str in MISSING_VALUES:
        return ''
    
    # Try different date formats
    formats = ['%Y-%m-%d', '%m/%d/%Y', '%d-%b-%Y']
    for fmt in formats:
        try:
            dt = datetime.strptime(date_str, fmt)
            return dt.strftime('%Y-%m-%d')
        except ValueError:
            continue
    
    return ''

def parse_distance(dist_str):
    """Parse distance and convert to km."""
    if not dist_str or dist_str in MISSING_VALUES:
        return ''
    
    # Extract number and unit
    # TODO: Extract numeric value and unit
    # TODO: Convert to km if needed
    # TODO: Return formatted as XX.XX
    pass

def parse_temperature(temp_str):
    """Parse temperature and convert to Celsius."""
    if not temp_str or temp_str in MISSING_VALUES:
        return ''
    
    # TODO: Extract numeric value and unit
    # TODO: Convert to Celsius if needed
    # TODO: Return formatted as X.X
    pass

def main():
    with open('input/messy_data.csv', 'r') as f:
        reader = csv.DictReader(f)
        rows = list(reader)
    
    cleaned_rows = []
    for row in rows:
        cleaned = {
            'date': parse_date(row['date']),
            'distance': parse_distance(row['distance']),
            'temperature': parse_temperature(row['temperature']),
            'station_id': row['station_id'].strip().upper()
        }
        cleaned_rows.append(cleaned)
    
    with open('output.csv', 'w', newline='') as f:
        writer = csv.DictWriter(f, fieldnames=['date', 'distance', 'temperature', 'station_id'])
        writer.writeheader()
        writer.writerows(cleaned_rows)

if __name__ == '__main__':
    main()
