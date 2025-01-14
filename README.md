# A demo of GNU make

This repository contains code for demonstrating a simple [GNU make](https://www.gnu.org/software/make/) example.

In this simple demo, I generate data with `code/make_data.py`, fit a simple regression model with `code/regression.py`, and plot the results with `code/fig1.R`. The idea here is to show how `make` can be used to manage a multi-language analysis pipeline. The `makefile` contains rules for generating the data, fitting the model, and plotting the results.

The slides can be found in the `slides` directory.
