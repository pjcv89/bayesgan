#! usr/bin/python2.7

from scipy import misc
import numpy as np
import glob

npyfile = []
for image_path in glob.glob("ImagesOut/*.jpg"):
    image = misc.imread(image_path)
    npyfile.append(image)
    
npyfile = np.asarray(npyfile)
np.save('x_tr.npy', npyfile)