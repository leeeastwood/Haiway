#
# This is a project Makefile. It is assumed the directory this Makefile resides in is a
# project subdirectory.
#
ifndef HAIWAY_PATH
export HAIWAY_PATH := $(CURDIR)/../../..
endif

ifndef IDF_PATH
export IDF_PATH := $(HAIWAY_PATH)/lib/ThirdParty/ESP32/esp-idf
endif

PROJECT_NAME := hello-world
#EXTRA_COMPONENT_DIRS := $(HAIWAY_PATH)/lib/ThirdParty/ESP32/esp32_haiway
include $(IDF_PATH)/make/project.mk


