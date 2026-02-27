# Problem 11 Starter (Python)

import csv
import numpy as np

def read_matrix(filepath):
    """Read a matrix from a CSV file."""
    matrix = []
    with open(filepath, 'r') as f:
        reader = csv.reader(f)
        for row in reader:
            matrix.append([int(x) for x in row])
    return np.array(matrix)

def main():
    # Read matrices
    A = read_matrix('input/matrix_a.csv')
    B = read_matrix('input/matrix_b.csv')
    
    # TODO: Compute product
    # TODO: Compute transpose
    # TODO: Compute determinant
    # TODO: Save outputs
    pass

if __name__ == '__main__':
    main()
