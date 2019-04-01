port_name=/dev/tty.SLAB_USBtoUART

basedir=$(pwd)
echo $basedir
if [ $# -gt 0 ]; then
    port_name=$1
fi

# if [ $# -gt 0 ]; then
#     while [ $# -gt 0 ] ; do
#         case "$1" in
#             --port_name) port_name=/dev/tty.SLAB_USBtoUART; shift 2;;
#             --build) {
#                 ehco "only build"
#                 cd $HAIWAY_PATH/framework
#                 source $HAIWAY_PATH/framework/scripts/provision.sh ESP32
#                 make clean && BOARD=ESP32 RELEASE=1 make
#             }
#             shift 2;;
#             --flash) {
#                 echo "only flash"
#                 if [ ! -d "$HAIWAY/temp" ]; then
#                     mkdir $HAIWAY_PATH/temp
#                 fi

#                 if [ ! -d "$HAIWAY_PATH/temp/espruino*" ]; then
#                     tar -zxvf $HAIWAY_PATH/framework/espruino*.tgz -C $HAIWAY_PATH/temp/
#                 fi

#                 $IDF_PATH/components/esptool_py/esptool/esptool.py    \
#                         --chip esp32                                \
#                         --port $port_name                           \
#                         --baud 921600                               \
#                         --after hard_reset write_flash              \
#                         -z                                          \
#                         --flash_mode dio                            \
#                         --flash_freq 40m                            \
#                         --flash_size detect                         \
#                         0x1000 $HAIWAY_PATH/temp/espruino*/bootloader.bin                       \
#                         0x8000 $HAIWAY_PATH/temp/espruino*/partitions_espruino.bin              \
#                         0x10000 $HAIWAY_PATH/temp/espruino*/espruino_esp32.bin

#                 rmtrash $HAIWAY_PATH/temp

#             } 
#             shift 2;;
#             *) echo "unknown parameter $1." ; exit 1 ; break;;
#         esac
#     done
# else
    echo "build and flash"

    cd $HAIWAY_PATH/framework
    source $HAIWAY_PATH/framework/scripts/provision.sh ESP32
    make clean && BOARD=ESP32 RELEASE=1 make

    if [ ! -d "$HAIWAY/temp" ]; then
        mkdir $HAIWAY_PATH/temp
    fi
    if [ ! -d "$HAIWAY_PATH/temp/espruino*" ]; then
        tar -zxvf $HAIWAY_PATH/framework/espruino*.tgz -C $HAIWAY_PATH/temp/
    fi
    $IDF_PATH/components/esptool_py/esptool/esptool.py    \
            --chip esp32                                \
            --port $port_name                           \
            --baud 921600                               \
            --after hard_reset write_flash              \
            -z                                          \
            --flash_mode dio                            \
            --flash_freq 40m                            \
            --flash_size detect                         \
            0x1000 $HAIWAY_PATH/temp/espruino*/bootloader.bin                       \
            0x8000 $HAIWAY_PATH/temp/espruino*/partitions_espruino.bin              \
            0x10000 $HAIWAY_PATH/temp/espruino*/espruino_esp32.bin
    rmtrash $HAIWAY_PATH/temp
    rmtrash $HAIWAY_PATH/framework/espruino*.tgz $HAIWAY_PATH/framework/espruino*.elf $HAIWAY_PATH/framework/espruino*.bin
# fi

cd $basedir