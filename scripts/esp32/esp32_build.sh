cd $HAIWAY/framework
rm -rf build
make clean && BOARD=ESP32 RELEASE=1 make
cd $HAIWAY
