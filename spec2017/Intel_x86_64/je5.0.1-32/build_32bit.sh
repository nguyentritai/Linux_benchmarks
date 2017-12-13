
export PATH=/usr/bin:${PATH}
export LD_LIBRARY_PATH=/usr/lib64:/usr/lib:${LD_LIBRARY_PATH}
./configure --build=i686-pc-linux-gnu "CFLAGS=-m32" "CXXFLAGS=-m32" "LDFLAGS=-m32"
make clean
make
