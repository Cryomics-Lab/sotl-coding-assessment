# Problem 9 Starter (R)

stop_words <- c(
  'a', 'an', 'and', 'are', 'as', 'at', 'be', 'by', 'for', 'from',
  'has', 'he', 'i', 'in', 'is', 'it', 'its', 'of', 'on', 'or',
  'that', 'the', 'to', 'was', 'will', 'with'
)

# Read the text file
text <- readLines('input/ecology_text.txt', warn = FALSE)
text <- tolower(paste(text, collapse = ' '))

# TODO: Tokenize, remove stop words, count frequencies
# TODO: Sort by frequency (descending), then alphabetically
# TODO: Take top 20
# TODO: Write to output.csv

# Template for writing output
# output_df <- data.frame(rank = 1:20, word = ..., frequency = ...)
# write.csv(output_df, 'output.csv', row.names = FALSE)
