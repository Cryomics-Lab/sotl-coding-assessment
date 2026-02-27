# Problem 8: Optimize Search
# Find all points within radius_km of each query using Haversine formula
# Save output to: problems/08-optimize-search/output.csv

import csv
import math

def haversine(lat1, lon1, lat2, lon2):
    """Compute distance in km between two points using Haversine formula"""
    R = 6371.0  # Earth radius in km
    lat1_rad = math.radians(lat1)
    lon1_rad = math.radians(lon1)
    lat2_rad = math.radians(lat2)
    lon2_rad = math.radians(lon2)
    
    dlat = lat2_rad - lat1_rad
    dlon = lon2_rad - lon1_rad
    
    a = math.sin(dlat / 2) ** 2 + math.cos(lat1_rad) * math.cos(lat2_rad) * math.sin(dlon / 2) ** 2
    c = 2 * math.asin(math.sqrt(a))
    
    return R * c

# Read points
points = []
with open('problems/08-optimize-search/input/points.csv', 'r') as f:
    reader = csv.DictReader(f)
    for row in reader:
        points.append({
            'id': int(row['id']),
            'lat': float(row['lat']),
            'lon': float(row['lon'])
        })

# Read queries
queries = []
with open('problems/08-optimize-search/input/queries.csv', 'r') as f:
    reader = csv.DictReader(f)
    for row in reader:
        queries.append({
            'query_id': int(row['query_id']),
            'lat': float(row['lat']),
            'lon': float(row['lon']),
            'radius_km': int(row['radius_km'])
        })

# YOUR CODE HERE
