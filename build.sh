#cmake -D CMAKE_BUILD_TYPE=RELEASE -D CMAKE_INSTALL_PREFIX=/home/lab/tony/opencv/build/install -D CUDA_GENERATION=Pascal ..
#pass: cmake -D CMAKE_BUILD_TYPE=RELEASE -D CMAKE_INSTALL_PREFIX=/home/lab/tony/opencv/build/install -D CUDA_GENERATION=Kepler ..
#cmake -D CMAKE_BUILD_TYPE=RELEASE -D CMAKE_INSTALL_PREFIX=/home/tony/work/opencv3.4/opencv/build2/install_dir  -D CUDA_GENERATION=Kepler -D WITH_XINE=ON -D WITH_OPENGL=ON -D WITH_TBB=ON -D BUILD_EXAMPLES=ON ..
cmake -D CMAKE_BUILD_TYPE=RELEASE -D CMAKE_INSTALL_PREFIX=/home/tony/work/opencv3.4/opencv/build3/install_dir  -D WITH_XINE=ON -D WITH_OPENGL=ON -D WITH_TBB=ON ..
