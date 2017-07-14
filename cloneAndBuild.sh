git clone --recursive https://github.com/caffe2/caffe2.git && cd caffe2 &&
make && cd build && sudo make install
python -c 'from caffe2.python import core' 2>/dev/null && echo "Success" || echo "Failure"
