FROM nvcr.io/nvidia/theano:18.08

# Install project environment
RUN pip install matplotlib pillow ipython jupyter keras==1.1 scikit-learn==0.17.1 h5py

# Patch Keras for VaDE training
COPY ./training.py /usr/local/lib/python2.7/dist-packages/keras/engine/training.py

# Install ml-cli
RUN pip install ml-cli

# Link cuda binaries for python c++ libraries that need cuda (theano, tensorflow, ...)
# ENV LD_LIBRARY_PATH=/usr/local/cuda/lib64:$LD_LIBRARY_PATH

WORKDIR /usr/local/src/code
