# Generate the figure (in R)
figures/fig1.jpeg: code/fig1.R output/results.csv
	Rscript code/fig1.R output/results.csv figures/fig1.jpeg

# Make the data (in Python)
data/data.csv: code/make_data.py
	python3 code/make_data.py

# Fit the regression model (in Python)
output/results.csv: data/data.csv code/regression.py
	python3 code/regression.py data/data.csv

