# Cloning the general repo
git submodule init
git submodule update

# creating the dataset
cd datasets/ESSD-benchmark-datasets/
conda env create -f environment.yml
bash -i download_ESSD_dataset.sh
cd ../..
mkdir data
mv ./datasets/ESSD-benchmark-datasets/*.nc ./data/

