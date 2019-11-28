#
# This is a project Makefile. It is assumed the directory this Makefile resides in is a
# project subdirectory.
#

PROJECT_NAME := espruino-esp32

# attempted to set only components to build - could not get clean build
#COMPONENTS :=  app_update  bootloader_support  coap  driver  esptool_py  expat  freertos  json  lwip     micro-ecc  nghttp     openssl          sdmmc      tcpip_adapter  vfs     \
#        xtensa-debug-module bootloader         bt         cxx   esp32   ethernet    fatfs  idf_test  log   mbedtls  newlib     nvs_flash  partition_table  spi_flash  ulp            wpa_supplicant

# Components not used
#  

#COMPONENT_OWNBUILDTARGET: build.tar

include $(IDF_PATH)/make/project.mk

app.tgz:
	echo `pwd`
	tar cfz deploy/esp-idf.tgz  `find ../esp-idf/components/ -name *.h` \
		`find ../esp-idf/components/ -name *.a` \
		`find ../esp-idf/components/ -name *.ld` \
		`find ../esp-idf/components/esptool_py/esptool/esptool.py`
	tar cfz deploy/app.tgz `find ../app -name *.a` `find ../app/build/ -name sdkconfig.h` \
		`find ../app/build/ -name *.ld` `find ../app/build/ -name partitions*.bin` \
		`find ../app/build/ -name bootloader.bin`
