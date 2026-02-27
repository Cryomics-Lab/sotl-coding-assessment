# Problem 16 Starter (R)
# Create a publication-quality map

library(ggplot2)
library(readr)
library(ggspatial)
library(sf)

# Read data
stations <- read_csv('../05-merge-and-summarize/input/stations.csv')
points <- read_csv('../08-optimize-search/input/points.csv')

# TODO: Create map using ggplot2
# - Plot geographic points colored by category
# - Plot stations as labeled points
# - Add north arrow (annotation_north_arrow)
# - Add scale bar (annotation_scale)
# - Add coordinate grid

# Suggested approach:
# p <- ggplot() +
#   geom_point(data = points, aes(x = lon, y = lat, color = category), alpha = 0.5) +
#   geom_point(data = stations, aes(x = longitude, y = latitude), 
#              shape = 17, size = 3, color = 'black') +
#   geom_label_repel(data = stations, aes(x = longitude, y = latitude, label = station_name)) +
#   annotation_north_arrow(location = 'tr', which_north = 'true') +
#   annotation_scale(location = 'bl', bar_cols = c('black', 'white')) +
#   coord_sf() +
#   labs(title = 'Manitoba: Station and Point Distribution',
#        x = 'Longitude',
#        y = 'Latitude',
#        color = 'Point Category') +
#   theme_minimal()
#
# ggsave('map.png', p, width = 150, height = 150, units = 'mm', dpi = 96)

print("TODO: Create map with all cartographic elements")
