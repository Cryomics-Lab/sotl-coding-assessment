# Problem 15 Starter (R)
# Create a publication-quality grouped bar chart

library(ggplot2)
library(dplyr)
library(tidyr)
library(readr)

# Read log file
log_data <- read_lines('../04-string-parsing/input/logfile.txt')

# TODO: Parse log file
# - Extract LEVEL and STATUS from each line
# - Create data frame with columns: level, status

# TODO: Create grouped bar chart using ggplot2
# - X-axis: status (sorted numerically)
# - Y-axis: count
# - Fill color: level
# - Identify error codes (400+)

# Suggested approach:
# parsed <- tibble(line = log_data) %>%
#   separate(line, into = c('timestamp', 'level', 'method', 'path', 'status', 'time'),
#            sep = ' ', remove = FALSE) %>%
#   mutate(level = str_remove_all(level, '[\[\]]'),
#          status = as.numeric(status))
#
# p <- ggplot(parsed, aes(x = factor(status), fill = level)) +
#   geom_bar(position = 'dodge') +
#   labs(title = 'HTTP Status Codes by Log Level',
#        x = 'HTTP Status Code',
#        y = 'Count',
#        fill = 'Log Level') +
#   theme_minimal()
#
# ggsave('barchart.png', p, width = 5, height = 4, dpi = 96)

print("TODO: Create grouped bar chart")
