#!/usr/bin/bash

# nImages - number of Images to download
# nTest - number of Images to choose as validation set
# wnID - ImageNet ID to download
# nPixel - number of pixels (both width and height) of images

nImages=$1
wnID=$2
nPixel=$3

printf 'ACTIVATING CONDA ENVIRONMENT \n'
source /home/$USER/miniconda3/bin/activate py27

printf 'DOWNLOADING SAMPLE IMAGES \n'
python download_sample_images_by_wnid.py $nImages $wnID Images

printf 'PREPROCESSING SAMPLE IMAGES \n'
python process_images.py Images ImagesOut $nImages $nPixel $nPixel train
