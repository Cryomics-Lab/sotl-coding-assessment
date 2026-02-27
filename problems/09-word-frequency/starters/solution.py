# Problem 9 Starter (Python)

import csv
from collections import Counter

# Common English stop words
STOP_WORDS = {
    'a', 'an', 'and', 'are', 'as', 'at', 'be', 'by', 'for', 'from',
    'has', 'he', 'i', 'in', 'is', 'it', 'its', 'of', 'on', 'or',
    'that', 'the', 'to', 'was', 'will', 'with'
}

def main():
    # Read the text file
    with open('input/ecology_text.txt', 'r') as f:
        text = f.read().lower()
    
    # TODO: Tokenize, remove stop words, count frequencies
    # TODO: Sort by frequency (descending), then alphabetically
    # TODO: Take top 20
    # TODO: Write to output.csv
    pass

if __name__ == '__main__':
    main()
