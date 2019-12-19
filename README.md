# Haiway
A draft version for haiway rtos!

## On MacOS
### For ESP32
You need install toolchain of ESP32 firstly.(https://docs.espressif.com/projects/esp-idf/en/release-v3.0/get-started/index.html)   
  
Add the following line to your ~/.bash_profile file:
export HAIWAY_PATH=~/Haiway
   
Flash HaiwayScript
bash $HAIWAY_PATH/scripts/esp32/flash_framework-js.sh /dev/tty.SLAB_USBtoUART
   
/dev/tty.SLAB_USBtoUART can be modified to your ESP32 port name.
   
## On Linux
Get it on the 'linux' branch.
