# Automatically generated build file. Do not edit.
COMPONENT_INCLUDES += /Users/cocout/Haiway/lib/ThirdParty/ESP32/esp32_haiway/freertos/include /Users/cocout/Haiway/lib/ThirdParty/ESP32/esp32_haiway/config_files /Users/cocout/Haiway/kernel/include /Users/cocout/Haiway/kernel/portable/ThirdParty/GCC/Xtensa_ESP32/include
COMPONENT_LDFLAGS += -L$(BUILD_DIR_BASE)/freertos -lfreertos -Wl,--undefined=uxTopUsedPriority
COMPONENT_LINKER_DEPS += 
COMPONENT_SUBMODULES += 
COMPONENT_LIBRARIES += freertos
component-freertos-build: 
