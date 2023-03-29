# Cloning the general repo
git submodule init
git submodule update

# creating the dataset
cd datasets/ESSD-benchmark-datasets/
conda env create -f environment.yml -y
bash -i download_ESSD_dataset.sh
cd ../..
mkdir data
mv ./datasets/ESSD-benchmark-datasets/*.nc ./data/

# Run the PP methods
# 1 - MBM
echo "Postprocessing with the MBM method"
cd codes/ESSD-mbm/
git submodule init
git submodule update
cd pythie
git checkout 21a29a9dc91f1bcd6b4f75caf0d4dbae4a375303 
cd ..
conda env create -f environment.yml
conda activate ESSD-mbm
ln -s ../../data data
python ESSD-mbm-training-global.py
python ESSD-mbm-postprocessing-global.py
echo "MBM method done !"

# 2 - ASRE (done with the MBM env)
echo "Postprocessing with the ASRE method"
cd ../ESSD-ASRE
ln -s ../../data/ESSD_benchmark_training_data_forecasts.nc
ln -s ../../data/ESSD_benchmark_training_data_observations.nc
ln -s ../../data/ESSD_benchmark_test_data_forecasts.nc
python ASRE_with_local_bias_correction.py
echo "ASRE method done !"

# 3 - ANET (done with the MBM env)
echo "Postprocessing with the ANET method"
cd ../ESSD-ANET
conda install pytorch -c conda-forge -y
python train.py ../../data/
python generate.py ../../data/ `ls -d Model_*`
echo "ANET method done !"

# 3 - DRN (done with the MBM env)
echo "Postprocessing with the DRN method"
cd ../ESSD-DRN
conda install pyarrow -c conda-forge -y
ln -s ../../data EUPPdata
cd data-preprocess



