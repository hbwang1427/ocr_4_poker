g++ -c -pipe -g -std=gnu++11 -Wall -W -fPIC -I. -I./tensorflow -I./tensorflow/bazel-tensorflow/external/eigen_archive -I./tensorflow/bazel-tensorflow/external/protobuf_archive/src -I./tensorflow/bazel-tensorflow/external/nsync/public -I./tensorflow/bazel-genfiles -o main.o ./main.cpp
g++  -o ocr_cpp main.o -L./ -ltensorflow_cc -ltensorflow_framework 
cp ./tensorflow/bazel-bin/tensorflow/libtensorflow* .
