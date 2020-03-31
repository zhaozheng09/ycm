bazel build -s -j 32 --verbose_failures -c opt --copt=-march=native --copt=-mfpmath=both //tensorflow/tools/pip_package:build_pip_package

bazel-bin/tensorflow/tools/pip_package/build_pip_package /tmp/tensorflow_pkg

pip install  /tmp/tensorflow_pkg/tensorflow-1.10.1-cp27-cp27mu-linux_x86_64.whl -U
