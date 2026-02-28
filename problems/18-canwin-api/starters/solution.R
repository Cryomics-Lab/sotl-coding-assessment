# Problem 18: CanWIN ERDDAP API — BaySys Ice Beacon Data
# Download ice beacon data via ERDDAP and summarize beacon movement.

# You may want: library(rerddap) or just read.csv() on the URL

# ERDDAP details
server <- "https://canwinerddap.ad.umanitoba.ca/erddap"
dataset_id <- "BaySys_IceBeacon_data_9484_28fc_f86c"

# Step 1: Construct the tabledap URL
# variables <- "time,latitude,longitude,beacon_ID"
# constraints <- "time>=2017-03-01T00:00:00Z&time<=2017-04-01T00:00:00Z"
# url <- paste0(server, "/tabledap/", dataset_id, ".csv?", variables, "&", constraints)

# Step 2: Download and parse (skip the units row — ERDDAP CSVs have 2 header rows)
# df <- read.csv(url, skip = 1)

# Step 3: Haversine function
haversine <- function(lat1, lon1, lat2, lon2) {
  R <- 6371
  dlat <- (lat2 - lat1) * pi / 180
  dlon <- (lon2 - lon1) * pi / 180
  a <- sin(dlat/2)^2 + cos(lat1 * pi/180) * cos(lat2 * pi/180) * sin(dlon/2)^2
  R * 2 * atan2(sqrt(a), sqrt(1 - a))
}

# Step 4: Group by beacon_ID, compute stats

# Step 5: Write output
output_path <- "problems/18-canwin-api/output.csv"
# write.csv(result, output_path, row.names = FALSE)
