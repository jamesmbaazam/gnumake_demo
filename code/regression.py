import sys
import pandas as pd
import numpy as np

# Get input file from command-line arguments
if len(sys.argv) != 2:
    print("Usage: python regression.py <input_file>")
    sys.exit(1)

data = sys.argv[1]

# Load data
data = pd.read_csv(data)

# Perform linear regression
coeff = np.polyfit(data['x'], data['y'], 1)  # Degree 1 for linear
data['y_pred'] = coeff[0] * data['x'] + coeff[1]
data.to_csv('output/results.csv', index=False)
