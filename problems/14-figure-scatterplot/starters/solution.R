# Problem 14 Starter (R)
# Create a publication-quality scatterplot with trend line

library(ggplot2)
library(readr)

# Read observations data
obs <- read_csv('../05-merge-and-summarize/input/observations.csv')

# TODO: Create scatterplot using ggplot2
# - X-axis: temp_c
# - Y-axis: snow_depth_cm
# - Color by station_id
# - Add trend line (geom_smooth)
# - Handle overplotting with alpha transparency

# Suggested approach:
# p <- ggplot(obs, aes(x = temp_c, y = snow_depth_cm, color = station_id)) +
#   geom_point(alpha = 0.6, size = 2) +
#   geom_smooth(method = 'lm', color = 'black', linetype = 'dashed') +
#   labs(title = 'Temperature vs. Snow Depth by Station',
#        x = 'Temperature (°C)',
#        y = 'Snow Depth (cm)',
#        color = 'Station') +
#   theme_minimal()
#
# ggsave('scatterplot.png', p, width = 89, height = 70, units = 'mm', dpi = 96)

print("TODO: Create scatterplot with trend line")
