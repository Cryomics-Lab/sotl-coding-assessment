# Problem 12: Data Validation & Cleaning

## Specification
Read the messy CSV at `input/messy_data.csv`. This dataset contains several data quality issues:
- **Dates**: Mixed formats (YYYY-MM-DD, MM/DD/YYYY, Month DD YYYY, DD-Mon-YYYY)
- **Distances**: Mixed units (km, m, mi, or unitless)
- **Temperatures**: Mixed units and formats (C, F, °C, °F)
- **Missing values**: Represented as "NA", "N/A", "-999", "", "null", "missing"
- **Station IDs**: Inconsistent capitalization and trailing whitespace

Standardize the data:
- All dates → YYYY-MM-DD format
- All distances → kilometers (2 decimal places)
- All temperatures → Celsius (1 decimal place)
- Missing values → empty string ""
- Station IDs → UPPERCASE, trimmed whitespace

## Output
Save to: `problems/12-data-cleaning/output.csv`

Same columns as input, but with cleaned values. Include all rows (even those with missing values, represented as empty strings).
