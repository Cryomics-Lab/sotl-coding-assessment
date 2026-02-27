# Problem 13 Starter (R)
# Create a publication-quality boxplot

library(ggplot2)
library(readr)

# Read weather data
weather <- read_csv('../02-csv-column-mean/input/weather.csv')

# TODO: Create boxplot using ggplot2
# - X-axis: station_id
# - Y-axis: temp_c
# - Use colorblind-friendly palette (e.g., scale_fill_manual with Okabe-Ito colors)
# - Add proper labels and title

# Suggested approach:
# p <- ggplot(weather, aes(x = station_id, y = temp_c, fill = station_id)) +
#   geom_boxplot() +
#   scale_fill_brewer(palette = 'Set2') +
#   labs(title = 'Daily Temperature Distribution by Station',
#        x = 'Station',
#        y = 'Temperature (°C)') +
#   theme_minimal() +
#   theme(legend.position = 'none')
#
# ggsave('boxplot.png', p, width = 89, height = 70, units = 'mm', dpi = 96)

print("TODO: Create boxplot")
