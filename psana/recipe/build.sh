# Capture the install flag
make_install=$1

# Create and navigate to the build directory
mkdir -p build
cd build

# Run CMake configuration with the remaining arguments
cmake -DCMAKE_INSTALL_PREFIX="${PREFIX}" -DCMAKE_PREFIX_PATH="${PREFIX}" -DCMAKE_BUILD_TYPE=RelWithDebInfo ..
make -j 4
make -j 4 install
