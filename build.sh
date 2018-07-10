sudo apt-get install cmake
sudo apt-get install build-essential libgtk2.0-dev libavcodec-dev libavformat-dev libjpeg.dev libtiff4.dev libswscale-dev libjasper-dev  

#cmake -D CMAKE_BUILD_TYPE=RELEASE -D CMAKE_INSTALL_PREFIX=/home/lab/tony/opencv/build/install -D CUDA_GENERATION=Pascal ..
#pass: cmake -D CMAKE_BUILD_TYPE=RELEASE -D CMAKE_INSTALL_PREFIX=/home/lab/tony/opencv/build/install -D CUDA_GENERATION=Kepler ..
#cmake -D CMAKE_BUILD_TYPE=RELEASE -D CMAKE_INSTALL_PREFIX=/home/tony/work/opencv3.4/opencv/build2/install_dir  -D CUDA_GENERATION=Kepler -D WITH_XINE=ON -D WITH_OPENGL=ON -D WITH_TBB=ON -D BUILD_EXAMPLES=ON ..

cmake -D CMAKE_BUILD_TYPE=RELEASE -D CMAKE_INSTALL_PREFIX=./install  -D WITH_XINE=ON -D WITH_OPENGL=ON -D WITH_TBB=ON ..
