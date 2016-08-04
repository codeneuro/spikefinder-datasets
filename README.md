# spikefinder-datasets

This README describes how to load the datasets for the spikefinder analysis benchmarking challenge. You probably received this document when downloading a dataset. Visit the [spikefinder](https://github.com/codeneuro/spikefinder) repository for more information on the challenge.

Training datasets are provided with ground truth in CSV format. There are five datasets numbered `1-5`. For each one there is a `calcium` file with calcium flouresence signals, and a `spikes` file with spike rates, both sampled at a common rate of `100 Hz`. The columns of each table are neurons, and the rows are time points. In a given dataset, some neurons will have slightly different numbers of time points than others, this is expected.

Along with the data itself, each download includes example loading scripts in python and matlab, the source code of which is in this reposistory.

To contribute example loading scripts for other languages, just submit a pull request! If there are problems with the loading scripts, create a GitHub issue.
