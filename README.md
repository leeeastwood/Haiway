# Haiway
A draft version for haiway rtos!

### MacOS
Add the following line to your ~/.bash_profile file: 
  
export HAIWAY_PATH=~/Haiway
  
Flash HaiwayScript:
  
bash $HAIWAY_PATH/scripts/esp32/flash_framework-js.sh /dev/tty.SLAB_USBtoUART
'/dev/tty.SLAB_USBtoUART' can be modified to your ESP32 port name.
