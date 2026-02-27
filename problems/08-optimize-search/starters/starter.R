# Problem 8: Optimize Search
# Find all points within radius_km of each query using Haversine formula
# Save output to: problems/08-optimize-search/output.csv

haversine <- function(lat1, lon1, lat2, lon2) {
  R <- 6371.0  # Earth radius in km
  lat1_rad <- lat1 * pi / 180
  lon1_rad <- lon1 * pi / 180
  lat2_rad <- lat2 * pi / 180
  lon2_rad <- lon2 * pi / 180
  
  dlat <- lat2_rad - lat1_rad
  dlon <- lon2_rad - lon1_rad
  
  a <- sin(dlat / 2) ^ 2 + cos(lat1_rad) * cos(lat2_rad) * sin(dlon / 2) ^ 2
  c <- 2 * asin(sqrt(a))
  
  return(R * c)
}

points <- read.csv('problems/08-optimize-search/input/points.csv')
queries <- read.csv('problems/08-optimize-search/input/queries.csv')

# YOUR CODE HERE
