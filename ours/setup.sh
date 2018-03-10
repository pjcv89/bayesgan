#!/usr/bin/bash
source activate bgan
bash preprocessing_by_wnid.sh 1000 n04524313 128
python make_npyfile.py
mv x_tr.npy ..