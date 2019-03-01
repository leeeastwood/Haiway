HAIWAY_PATH := ../../../../..

COMPONENT_ADD_INCLUDEDIRS := include ../config_files $(HAIWAY_PATH)/kernel/include $(HAIWAY_PATH)/kernel/portable/ThirdParty/GCC/Xtensa_ESP32/include
COMPONENT_SRCDIRS := . $(HAIWAY_PATH)/kernel/portable/ThirdParty/GCC/Xtensa_ESP32 $(HAIWAY_PATH)/kernel
COMPONENT_ADD_LDFLAGS += -Wl,--undefined=uxTopUsedPriority
