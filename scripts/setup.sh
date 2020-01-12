#!/bin/bash


if [ $# -eq 0 ]; then
  echo "USAGE:"
  echo "  source scripts/provision.sh {BOARD}"
  echo "  source scripts/provision.sh ALL"
  return 1
fi

# set the current board
BOARDNAME=$1

# set the current OS
OSNAME=${2:-LINUX}
export HAIWAY=`pwd`

if [ "$BOARDNAME" = "ESP32" ]; then
    echo ===== ESP32
    # needed for esptool for merging binaries
    if pip --version 2>/dev/null; then 
      echo python/pip installed
    else
      echo Installing python/pip pyserial
      sudo DEBIAN_FRONTEND=noninteractive apt-get install -qq -y python python-pip
    fi
    if pip list 2>/dev/null | grep pyserial >/dev/null; then 
      echo pyserial installed; 
    else 
      echo Installing pyserial
      sudo pip -q install pyserial
    fi    

    if [ "$OSNAME" = "LINUX" ]; then
      echo Installing git wget make libncurses-dev flex bison gperf python python-serial
      sudo apt-get install git wget make libncurses-dev flex bison gperf python python-serial
    fi
      
    # SDK
    cd $HAIWAY/lib/thirdParty/esp32
    if [ ! -d "app" ]; then
	mkdir temp
	cd temp
        echo installing app folder
        #curl -Ls https://github.com/bnyf/EspruinoBuildTools/raw/master/esp32/deploy/app.tgz | tar xfz - --no-same-owner
	curl -L https://github.com/bnyf/HaiwayTool/raw/master/esp32/deploy/app.tgz | tar Pxfz - --no-same-owner
        #curl -Ls https://github.com/espruino/EspruinoBuildTools/raw/ESP32-V3.1/esp32/deploy/app.tgz | tar xfz - --no-same-owner
	cd ..
	rm -rf temp
    fi
    if [ ! -d "esp-idf" ]; then
	mkdir temp
	cd temp
        echo installing esp-idf folder
	curl -L https://github.com/bnyf/HaiwayTool/raw/master/esp32/deploy/esp-idf.tgz | tar Pxfz - --no-same-owner
        #curl -Ls https://github.com/espruino/EspruinoBuildTools/raw/master/esp32/deploy/esp-idf.tgz | tar xfz - --no-same-owner
        #curl -Ls https://github.com/espruino/EspruinoBuildTools/raw/ESP32-V3.1/esp32/deploy/esp-idf.tgz | tar xfz - --no-same-owner
	cd ..
	rm -rf temp
    fi
    if ! type xtensa-esp32-elf-gcc 2> /dev/null > /dev/null; then
        echo installing xtensa-esp32-elf-gcc
        if [ ! -d "xtensa-esp32-elf" ]; then
	   if [ "$OSNAME" = "LINUX" ]; then
              curl -L https://dl.espressif.com/dl/xtensa-esp32-elf-linux64-1.22.0-80-g6c4433a-5.2.0.tar.gz | tar xfz - --no-same-owner
	   fi
	   if [ "$OSNAME" = "MAC" ]; then
              curl -L https://dl.espressif.com/dl/xtensa-esp32-elf-osx-1.22.0-80-g6c4433a-5.2.0.tar.gz | tar xfz - --no-same-owner
	   fi
        else
           echo "Folder found"
        fi
        export PATH=$PATH:`pwd`/xtensa-esp32-elf/bin/
    fi
    export IDF_PATH=`pwd`/esp-idf
    export ESP_IDF_PATH=`pwd`/esp-idf
    export ESP_APP_TEMPLATE_PATH=`pwd`/app
    echo GCC is $(which xtensa-esp32-elf-gcc)
    
    cd $HAIWAY/framework
    source $HAIWAY/framework/scripts/provision.sh ESP32
    cd ..  
fi
