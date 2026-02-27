# Problem 11: Matrix Operations

## Specification
Read two 4×4 matrices from `input/matrix_a.csv` and `input/matrix_b.csv`.

Compute:
1. **Product**: A × B (matrix multiplication)
2. **Transpose**: (A × B)^T
3. **Determinant**: det(A × B)

## Output
Save three files:
- `problems/11-matrix-operations/product.csv` — the 4×4 product matrix
- `problems/11-matrix-operations/transpose.csv` — the 4×4 transposed matrix
- `problems/11-matrix-operations/determinant.txt` — single number, rounded to 4 decimal places

CSV files should contain numeric values only (no header). Example:
```
1,2,3,4
5,6,7,8
...
```

The determinant file should contain one line with a single number:
```
123.4567
```
