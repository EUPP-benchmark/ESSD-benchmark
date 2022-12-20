# ESSD-benchmark

Central point to gather the code repositories and assets of the ESSD postprocessing benchmark provided as supplementary material with:

    ...: The EUPPBench postprocessing benchmark dataset v1.0, ...

This includes the codes to construct the input dataset, to compute the postprocessing outputs and the verification scores.

## Installation

To install all the codes as submodules in one shot, first clone the present repository:

    git clone https://github.com/EUPP-benchmark/ESSD-benchmark.git
  
Then run the following commands:

    git submodule init
    git submodule update --remote

This will fetch all the codes into the subdirectories, and you are then ready to go.

## Datasets (`./datasets` directory)

The codes to download the ESSD benchmark dataset at https://github.com/EUPP-benchmark/ESSD-benchmark-datasets.git .
First download this dataset to be able to proceed with the other codes.

## Postprocessing codes (`./codes` directory)

The codes used to produces the benchmark output data are available on GitHub. Each method is provided in a dedicated repository, along with a complete description.

The methods available are:

 - ANET: NN post processing method using ensemble member encoders and dynamic attention
 	Repository: https://github.com/EUPP-benchmark/ESSD-ANET
 	
 - AR-EMOS: EMOS with heteroscedastic autoregressive error adjustments
 	Repository: https://github.com/EUPP-benchmark/ESSD-AR-EMOS
 	
 - ASRE: Accounting for systematic and representativeness errors
 	Repository: https://github.com/EUPP-benchmark/ESSD-ASRE
 	
 - DRN: Distributional regression network
 	Repository: https://github.com/EUPP-benchmark/ESSD-DRN
 	
 - DVQR: D-vine copula based postprocessing
 	Repository: https://github.com/EUPP-benchmark/ESSD-D-Vine-Copula
 	
 - EMOS: Ensemble model output statistics
 	Repository: https://github.com/EUPP-benchmark/ESSD-EMOS
 	
 - RC: Reliability Calibration
 	Repository: https://github.com/EUPP-benchmark/ESSD-reliability-calibration
 	
 - MBM: Member-By-Member postprocessing
 	Repository: https://github.com/EUPP-benchmark/ESSD-mbm
    
    
