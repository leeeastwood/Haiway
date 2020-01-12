python ${ESP_IDF_PATH}/components/esptool_py/esptool/esptool.py \
	--chip esp32 \
	--port "/dev/ttyUSB0" \
	--baud 921600 \
	write_flash \
	-z \
	--flash_mode "dio" \
	--flash_freq "40m" \
	0x1000 $HAIWAY/framework/build/espruino*/bootloader.bin \
	0x10000 $HAIWAY/framework/build/espruino*/espruino_esp32.bin \
	0x8000 $HAIWAY/framework/build/espruino*/partitions_espruino.bin