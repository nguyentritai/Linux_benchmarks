export PATH=/usr/bin:${PATH}
export LD_LIBRARY_PATH=/usr/lib64:/usr/lib:${LD_LIBRARY_PATH}

./configure 

make clean
make
