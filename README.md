# ESSD-benchmark

Central point to gather the code repositories and assets of the ESSD postprocessing benchmark provided as supplementary material with:

* Demaeyer, J., Bhend, J., Lerch, S., Primo, C., Van Schaeybroeck, B., Atencia, A., Ben Bouallègue, Z., Chen, J., Dabernig, M., Evans, G., Faganeli Pucer, J., Hooper, B., Horat, N., Jobst, D., Merše, J., Mlakar, P., Möller, A., Mestre, O., Taillardat, M., and Vannitsem, S.: The EUPPBench postprocessing benchmark dataset v1.0, Earth Syst. Sci. Data, 15, 2635–2653, https://doi.org/10.5194/essd-15-2635-2023, 2023.
  
**Please cite this article if you use (a part of) this code for a publication.**

This repository includes the codes to construct the input dataset, to compute the postprocessing outputs and the verification scores.

## Installation

To install all the codes as submodules in one shot, first clone the present repository:

    git clone https://github.com/EUPP-benchmark/ESSD-benchmark.git
  
Then run the following commands:

    git submodule init
    git submodule update

This will fetch all the codes into the subdirectories, and you are then ready to go.

## Datasets (`./datasets` directory)

The codes to download the ESSD benchmark dataset at https://github.com/EUPP-benchmark/ESSD-benchmark-datasets .
First download this dataset to be able to proceed with the other codes.

## Postprocessing codes (`./codes` directory)

The codes used to produces the benchmark output data are available on GitHub. Each method is provided in a dedicated repository, along with a complete description.

The methods available are:

 - [ANET](https://github.com/EUPP-benchmark/ESSD-ANET): NN post processing method using ensemble member encoders and dynamic attention
 	
 - [AR-EMOS](https://github.com/EUPP-benchmark/ESSD-AR-EMOS): EMOS with heteroscedastic autoregressive error adjustments
 	
 - [ASRE](https://github.com/EUPP-benchmark/ESSD-ASRE): Accounting for systematic and representativeness errors
 	
 - [DRN](https://github.com/EUPP-benchmark/ESSD-DRN): Distributional regression network
 	
 - [DVQR](https://github.com/EUPP-benchmark/ESSD-D-Vine-Copula): D-vine copula based postprocessing
 	
 - [EMOS](https://github.com/EUPP-benchmark/ESSD-EMOS): Ensemble model output statistics
 	
 - [RC](https://github.com/EUPP-benchmark/ESSD-reliability-calibration): Reliability Calibration
 	
 - [MBM](https://github.com/EUPP-benchmark/ESSD-mbm): Member-By-Member postprocessing
    
## Verification (`./verification` directory)

The codes used to verify benchmark forecasts output data are available on https://github.com/EUPP-benchmark/ESSD-Verification
