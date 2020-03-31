#!/bin/bash


#bazel build -j 20 --verbose_failures  --copt="-L/root/local/lib64/" --compilation_mode=dbg --strip=never --copt="-D_GLIBCXX_USE_CXX11_ABI=0"  //tensorflow/tools/pip_package:build_pip_package
#bazel build -j 20 --verbose_failures --copt="-lasan" --copt="-fsanitize=address" --copt="-L/root/local/lib64/" --compilation_mode=dbg --strip=never --copt="-D_GLIBCXX_USE_CXX11_ABI=0"  //tensorflow/tools/pip_package:build_pip_package
#bazel build -j 20 --verbose_failures --copt="-ltsan" --copt="-fPIE" --copt="-fsanitize=thread" --copt="-L/root/local/lib64/" --linkopt="-pie" --compilation_mode=dbg --strip=never --copt="-D_GLIBCXX_USE_CXX11_ABI=0"  //tensorflow/tools/pip_package:build_pip_package
# bazel build -j 20 --verbose_failures --copt="-ltsan" --copt="-fsanitize=thread" --copt="-L/root/local/lib64/" --compilation_mode=dbg --strip=never --copt="-D_GLIBCXX_USE_CXX11_ABI=0"  //tensorflow/tools/pip_package:build_pip_package
#bazel build -j 32 --copt="-lprofiler"  --verbose_failures  --compilation_mode=dbg --strip=never --copt="-D_GLIBCXX_USE_CXX11_ABI=0"  //tensorflow/tools/pip_package:build_pip_package
bazel build -j 20 --copt="-lasan" --copt="-fsanitize=address" --verbose_failures --compilation_mode=dbg --strip=never --copt="-D_GLIBCXX_USE_CXX11_ABI=0"  //tensorflow/tools/pip_package:build_pip_package

bazel-bin/tensorflow/tools/pip_package/build_pip_package /tmp/tensorflow_pkg

pip install  /tmp/tensorflow_pkg/tensorflow-1.10.1-cp36-cp36m-linux_x86_64.whl -U
