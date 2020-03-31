export TF_NEED_HDFS=1
export TF_NEED_CUDA=1
export TF_NEED_SEASTAR=1
#source scl_source enable devtoolset-4
GCC_HOST_COMPILER_PATH=`which gcc`
tensorflow/tools/ci_build/builds/configured GPU
./configure
bazel build -j 48 --cxxopt='-std=c++14'  --config=opt --config=cuda --config=verbs --verbose_failures //tensorflow/tools/pip_package:build_pip_package
bazel-bin/tensorflow/tools/pip_package/build_pip_package /tmp/tensorflow_pkg
pip install -i https://pypi.sankuai.com/simple  /tmp/tensorflow_pkg/*.whl -U
python -m pip install --upgrade numpy
bazel clean --expunge
