# example python script for loading spikefinder data
#
# for more info see https://github.com/codeneuro/spikefinder
#
# requires numpy, pandas, matplotlib
#

import numpy as np
import pandas as pd
import matplotlib.pyplot as plt

dataset = '1'
calcium_train = pd.read_csv(dataset + '.train.calcium.csv')
spikes_train = pd.read_csv(dataset + '.train.spikes.csv')

def plot(calcium, spikes, panel):
  x = np.arange(len(calcium)) / 100.0
  plt.figure(figsize=(15, 3))
  plt.plot(x, calcium, color=(.1, .6, .4))
  plt.plot(x, spikes / 2.0 - 1, color='k')
  plt.yticks([])
  plt.ylim([-2., 4.])
  plt.xlim(panel)
  plt.grid()
  plt.show()

plot(calcium_train['0'], spikes_train['0'], [0, 100])