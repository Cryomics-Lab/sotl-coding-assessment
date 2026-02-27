# Problem 12 Starter (R)

library(readr)
library(dplyr)
library(stringr)
library(lubridate)

missing_values <- c('NA', 'N/A', '-999', '', 'null', 'missing')

parse_date <- function(date_str) {
  # TODO: Parse dates in multiple formats
  # TODO: Return as YYYY-MM-DD or empty string
}

parse_distance <- function(dist_str) {
  # TODO: Extract number and unit
  # TODO: Convert to km
  # TODO: Return formatted as XX.XX
}

parse_temperature <- function(temp_str) {
  # TODO: Extract number and unit
  # TODO: Convert to Celsius
  # TODO: Return formatted as X.X
}

# Read data
data <- read_csv('input/messy_data.csv')

# TODO: Clean all columns
# TODO: Write output.csv
