#cmake -D CMAKE_BUILD_TYPE=RELEASE -D CMAKE_INSTALL_PREFIX=/home/lab/tony/opencv/build/install -D CUDA_GENERATION=Pascal ..
#pass: cmake -D CMAKE_BUILD_TYPE=RELEASE -D CMAKE_INSTALL_PREFIX=/home/lab/tony/opencv/build/install -D CUDA_GENERATION=Kepler ..
#cmake -D CMAKE_BUILD_TYPE=RELEASE -D CMAKE_INSTALL_PREFIX=/home/tony/work/opencv3.4/opencv/build2/install_dir  -D CUDA_GENERATION=Kepler -D WITH_XINE=ON -D WITH_OPENGL=ON -D WITH_TBB=ON -D BUILD_EXAMPLES=ON ..


ORIG_PATH=`pwd`
BUILD_PATH=$ORIG_PATH/build
INSTALL_PATH=$BUILD_PATH/opencv-3.4.0/install
mkdir -p $BUILD_PATH
mkdir -p $INSTALL_PATH

cd $BUILD_PATH

#cmake -D CMAKE_BUILD_TYPE=RELEASE -D CMAKE_INSTALL_PREFIX=$INSTALL_PATH  -D WITH_XINE=ON -D WITH_OPENGL=ON -D WITH_TBB=ON ..
cmake -D CMAKE_BUILD_TYPE=RELEASE -D CMAKE_INSTALL_PREFIX=$INSTALL_PATH   $ORIG_PATH
make -j4
make install
git log -n 1 > $INSTALL_PATH/version

find $INSTALL_PATH -name "opencv.pc"
find $INSTALL_PATH -name opencv.pc -exec sed -i -e "s#^prefix=.*#prefix=/home/xiaomeng/bin/opencv-3.4.0/install#g" {} \;
res="$?"
find $INSTALL_PATH -name opencv.pc -exec grep "prefix=" {} \;

cd $ORIG_PATH
cp build.sh $INSTALL_PATH/

