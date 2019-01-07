deps_config := \
	/Users/cocout/esp/esp-idf/components/app_trace/Kconfig \
	/Users/cocout/esp/esp-idf/components/aws_iot/Kconfig \
	/Users/cocout/esp/esp-idf/components/bt/Kconfig \
	/Users/cocout/esp/esp-idf/components/driver/Kconfig \
	/Users/cocout/esp/esp-idf/components/esp32/Kconfig \
	/Users/cocout/esp/esp-idf/components/esp_adc_cal/Kconfig \
	/Users/cocout/esp/esp-idf/components/esp_http_client/Kconfig \
	/Users/cocout/esp/esp-idf/components/ethernet/Kconfig \
	/Users/cocout/esp/esp-idf/components/fatfs/Kconfig \
	/Users/cocout/esp/esp-idf/components/freertos/Kconfig \
	/Users/cocout/esp/esp-idf/components/heap/Kconfig \
	/Users/cocout/esp/esp-idf/components/libsodium/Kconfig \
	/Users/cocout/esp/esp-idf/components/log/Kconfig \
	/Users/cocout/esp/esp-idf/components/lwip/Kconfig \
	/Users/cocout/esp/esp-idf/components/mbedtls/Kconfig \
	/Users/cocout/esp/esp-idf/components/openssl/Kconfig \
	/Users/cocout/esp/esp-idf/components/pthread/Kconfig \
	/Users/cocout/esp/esp-idf/components/spi_flash/Kconfig \
	/Users/cocout/esp/esp-idf/components/spiffs/Kconfig \
	/Users/cocout/esp/esp-idf/components/tcpip_adapter/Kconfig \
	/Users/cocout/esp/esp-idf/components/vfs/Kconfig \
	/Users/cocout/esp/esp-idf/components/wear_levelling/Kconfig \
	/Users/cocout/esp/esp-idf/Kconfig.compiler \
	/Users/cocout/esp/esp-idf/components/bootloader/Kconfig.projbuild \
	/Users/cocout/esp/esp-idf/components/esptool_py/Kconfig.projbuild \
	/Users/cocout/esp/blink/main/Kconfig.projbuild \
	/Users/cocout/esp/esp-idf/components/partition_table/Kconfig.projbuild \
	/Users/cocout/esp/esp-idf/Kconfig

include/config/auto.conf: \
	$(deps_config)


$(deps_config): ;
