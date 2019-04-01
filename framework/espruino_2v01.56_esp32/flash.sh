~/esp/esp-idf/components/esptool_py/esptool/esptool.py    \
        --chip esp32                                \
        --port /dev/tty.SLAB_USBtoUART                      \
        --baud 921600                               \
        --after hard_reset write_flash              \
        -z                                          \
        --flash_mode dio                            \
        --flash_freq 40m                            \
        --flash_size detect                         \
        0x1000 bootloader.bin                       \
        0x8000 ../../Espruino/app/build/partitions_espruino.bin              \
        0x10000 espruino_esp32.bin
