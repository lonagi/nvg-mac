##Opencv
#Source: https://sayak.dev/install-opencv-m1/
onda create --name <environment_name>
conda activate <environment_name>
conda install -y python==3.8.6
wget https://github.com/apple/tensorflow_macos/releases/download/v0.1alpha0/tensorflow_macos-0.1alpha0.tar.gz
tar xvf tensorflow_macos-0.1alpha0.tar.gz
cd tensorflow_macos/arm64
pip3 install --upgrade --no-dependencies --force numpy-1.18.5-cp38-cp38-macosx_11_0_arm64.whl 
cd ~

wget -O opencv.zip https://github.com/opencv/opencv/archive/4.5.0.zip
wget -O opencv_contrib.zip https://github.com/opencv/opencv_contrib/archive/4.5.0.zip
unzip opencv.zip
unzip opencv_contrib.zip
cd opencv-4.5.0
mkdir build && cd build

cmake \
  -DCMAKE_SYSTEM_PROCESSOR=arm64 \
  -DCMAKE_OSX_ARCHITECTURES=arm64 \
  -DWITH_OPENJPEG=OFF \
  -DWITH_IPP=OFF \
  -D CMAKE_BUILD_TYPE=RELEASE \
  -D CMAKE_INSTALL_PREFIX=/usr/local \
  -D OPENCV_EXTRA_MODULES_PATH=/Users/sayakpaul/Downloads/opencv_contrib-4.5.0/modules \
  -D PYTHON3_EXECUTABLE=/Users/sayakpaul/miniforge3/envs/dev/bin/python3 \
  -D BUILD_opencv_python2=OFF \
  -D BUILD_opencv_python3=ON \
  -D INSTALL_PYTHON_EXAMPLES=ON \
  -D INSTALL_C_EXAMPLES=OFF \
  -D OPENCV_ENABLE_NONFREE=ON \
  -D BUILD_EXAMPLES=ON ..

make -j8
sudo make install

mdfind cv2.cpython
/.../opencv-4.5.0/build/lib/python3/cv2.cpython-38-darwin.so
/usr/local/lib/python3.8/site-packages/cv2/python-3.8/cv2.cpython-38-darwin.so

cd /.../miniforge3/envs/dev/lib/python3.8/site-packages
ln -s /usr/local/lib/python3.8/site-packages/cv2/python-3.8/cv2.cpython-38-darwin.so cv2.so