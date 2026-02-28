#!/bin/bash
# Validation for Problem 20: CanWIN API
# Since this requires a live API call, we validate structure and reasonableness
# rather than exact match.

OUTPUT="$1"

if [ ! -f "$OUTPUT" ]; then
    echo "FAIL: Output file not found"
    exit 1
fi

# Check header
HEADER=$(head -1 "$OUTPUT")
if [ "$HEADER" != "beacon_id,n_observations,mean_lat,mean_lon,total_distance_km" ]; then
    echo "FAIL: Incorrect header row"
    exit 1
fi

# Check we have at least 1 data row
NROWS=$(tail -n +2 "$OUTPUT" | wc -l)
if [ "$NROWS" -lt 1 ]; then
    echo "FAIL: No data rows"
    exit 1
fi

# Check latitudes are in Hudson Bay area (55-61 N)
# Check longitudes are in Hudson Bay area (-95 to -83 W)
VALID=$(tail -n +2 "$OUTPUT" | awk -F',' '{
    if ($3 < 55 || $3 > 61 || $4 < -95 || $4 > -83) print "BAD"
}')

if [ -n "$VALID" ]; then
    echo "FAIL: Coordinates outside expected Hudson Bay range"
    exit 1
fi

echo "PASS: Structure valid, $NROWS beacons reported"
exit 0
