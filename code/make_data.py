import pandas as pd
import numpy as np

# Generate synthetic data
np.random.seed(123)
x = np.linspace(0, 10, 1000)
y = 3 * x + 7 + np.random.normal(0, 2, size=x.shape)

# Save data
data = pd.DataFrame({'x': x, 'y': y})
data.to_csv('data/data.csv', index=False)