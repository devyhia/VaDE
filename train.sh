KERAS_BACKEND=theano THEANO_FLAGS='floatX=float32,device=cuda,dnn.enabled=False' python VaDE.py "$@"
