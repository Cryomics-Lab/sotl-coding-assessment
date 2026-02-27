# Problem 10 Starter (R)

library(readr)
library(dplyr)
library(lubridate)

# Read observations
obs <- read_csv('input/field_observations.csv')

# TODO: Convert datetimes from UTC to CST (UTC-6)
# TODO: Filter to 2025-06-15 through 2025-08-31
# TODO: Group by date and count observations
# TODO: Sort by date

# Template for output
# output_df <- tibble(date_cst = ..., observation_count = ...)
# write_csv(output_df, 'output.csv')
