# ESSD-benchmark

Central point to gather the code repositories and assets of the ESSD postprocessing benchmark

This includes the codes to construct the input dataset, to compute the postprocessing outputs and the verification scores.

## Installation

To install all the codes as submodules in one shot, first clone the present repository:

  git clone https://github.com/EUPP-benchmark/ESSD-benchmark.git
  
Then run the following commands:

  git submodule init
  git submodule update --remote

This will fetch all the codes into the subdirectories, and you are ready to go.

## Datasets (`./datasets` directory)

The codes to download the ESSD benchmark dataset at https://github.com/EUPP-benchmark/ESSD-benchmark-datasets.git .
First download this dataset to be able to proceed with the other codes.
