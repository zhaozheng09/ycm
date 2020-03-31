deactivate

#cd
cd tensorflow
#git checkout feature/feature-afo-interface-2019-10-31
#git pull


source ~/.bashrc
bazel build -j 32 --verbose_failures -c opt --copt=-march=native --copt=-mfpmath=both --linkopt=-lrt --linkopt=-ltcmalloc //tensorflow/tools/pip_package:build_pip_package
##bazel build -j 32 --verbose_failures -c opt --copt=-march=native --copt=-mfpmath=both --linkopt=-lrt //tensorflow/tools/pip_package:build_pip_package
bazel-bin/tensorflow/tools/pip_package/build_pip_package /tmp/tensorflow_pkg

cd
virtualenv --always-copy tf_venv
cd tf_venv
source ~/.bashrc && source bin/activate
pip install -r /tmp/requirements.txt -i https://pip.sankuai.com/simple
pip install yep -i https://pip.sankuai.com/simple
pip install /tmp/tensorflow_pkg/*.whl --upgrade -i https://pip.sankuai.com/simple
pip install numpy==1.16.5 --upgrade -i https://pip.sankuai.com/simple
pip install tensorboard==1.12.2 --upgrade -i https://pip.sankuai.com/simple
cd

cd tf_venv && mkdir -p libcudnn && cd libcudnn && \
cp /lib64/libaio.so.1.0.1 ./ && ln -sf libaio.so.1.0.1 libaio.so.1 && \
cp /usr/lib64/libunwind.so.8.0.1 ./ && ln -sf libunwind.so.8.0.1 libunwind.so.8 && \
cp /usr/lib64/libnuma.so.1 ./ && ln -sf libnuma.so.1 libnuma.so && \
cp /usr/lib64/libtcmalloc.so.4.1.0 ./ && ln -sf libtcmalloc.so.4.1.0 libtcmalloc.so.4

cd

tar -zcvf tf_venv.tar.gz tf_venv > tar.txt
#tar -zcvf tf_venv_single_thread.tar.gz tf_venv > tar.txt
rm /tmp/tf_venv.tar.gz
#mv tf_venv_single_thread.tar.gz /tmp/
mv tf_venv.tar.gz /tmp/
