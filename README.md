# ocr_4_poker


Usage:

1. set LD_LIBRARY_PATH = $LD_LIBRARY_PATH:/where to put *.so
2. run ./run.sh
3. If *.so was not supported, follow the steps below to compile tensorflow
	3.1 git clone https://github.com/tensorflow/tensorflow     
	3.2 install bazel https://docs.bazel.build/versions/master/install-ubuntu.html
	3.3 go to /tensorflow and run "./configure"
	3.4 run "bazel build --jobs=6 --verbose_failures -c opt --copt=-mavx --copt=-mfpmath=both --copt=-msse4.2 //tensorflow:libtensorflow_cc.so"
4. If ocr_model2.pb was not found, follow the steps below to convert ocr_model.h5 to ocr_model.pb
	4.1 install tensorflow https://www.tensorflow.org/install/install_sources
	4.2 install keras https://keras.io/#installation
	4.3 run "sudo pip install h5py"
	4.4 go to ./keras_to_tensorflow
	4.5 run "./run.sh"
	4.6 copy ocr_model2.pb to ../
