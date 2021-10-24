# This target makefile was automatically generated by mbedUpdater.

# Device for which the code should be built.
MBED_DEVICE        := NRF51822_BOOT

# Can skip parsing of this makefile if user hasn't requested this device.
ifeq "$(findstring $(MBED_DEVICE),$(DEVICES))" "$(MBED_DEVICE)"

# Compiler flags which are specifc to this device.
TARGETS_FOR_DEVICE := $(BUILD_TYPE_TARGET) TARGET_UVISOR_UNSUPPORTED TARGET_CORTEX_M TARGET_LIKE_CORTEX_M0 TARGET_M0 TARGET_MCU_NORDIC_16K TARGET_MCU_NRF51 TARGET_MCU_NRF51822 TARGET_MCU_NRF51_16K TARGET_MCU_NRF51_16K_BASE TARGET_MCU_NRF51_16K_BOOT TARGET_MCU_NRF51_16K_BOOT_BASE TARGET_MCU_NRF51_16K_S130 TARGET_NORDIC TARGET_NRF51822 TARGET_NRF51822_BOOT TARGET_NRF51822_MKIT
FEATURES_FOR_DEVICE := FEATURE_BLE
PERIPHERALS_FOR_DEVICE := DEVICE_ANALOGIN DEVICE_ERROR_PATTERN DEVICE_I2C DEVICE_INTERRUPTIN DEVICE_PORTIN DEVICE_PORTINOUT DEVICE_PORTOUT DEVICE_PWMOUT DEVICE_SERIAL DEVICE_SLEEP DEVICE_SPI DEVICE_SPISLAVE
GCC_DEFINES := $(patsubst %,-D%,$(TARGETS_FOR_DEVICE))
GCC_DEFINES += $(patsubst %,-D%=1,$(FEATURES_FOR_DEVICE))
GCC_DEFINES += $(patsubst %,-D%=1,$(PERIPHERALS_FOR_DEVICE))
GCC_DEFINES += -D__CORTEX_M0 -DARM_MATH_CM0 -D__CMSIS_RTOS -D__MBED_CMSIS_RTOS_CM
GCC_DEFINES += -DNRF51 -DTARGET_MCU_NORDIC_16K -DTARGET_MCU_NRF51_16K -DTARGET_MCU_NRF51_16K_BOOT -DTARGET_MCU_NRF51_16K_S130 -DTARGET_NRF51822 -DTARGET_NRF51822_MKIT -DTARGET_OTA_ENABLED

C_FLAGS   := -mcpu=cortex-m0 -mthumb
ASM_FLAGS := -mcpu=cortex-m0 -mthumb
LD_FLAGS  := -mcpu=cortex-m0 -mthumb

# Extra platform specific object files to link into file binary.
DEVICE_OBJECTS := 

# Version of MRI library to use for this device.
DEVICE_MRI_LIB := 

# Determine all mbed source folders which are a match for this device so that it only needs to be done once.
DEVICE_MBED_DIRS := $(call filter_dirs,$(RAW_MBED_DIRS),$(TARGETS_FOR_DEVICE),$(FEATURES_FOR_DEVICE))

# Linker script to be used.  Indicates what should be placed where in memory.
NRF51822_BOOT_LSCRIPT  ?= $(call find_target_linkscript,$(DEVICE_MBED_DIRS))
LSCRIPT := $(NRF51822_BOOT_LSCRIPT)

include $(GCC4MBED_DIR)/build/device-common.mk

else
# Have an empty rule for this device since it isn't supported.
.PHONY: $(MBED_DEVICE)

ifeq "$(OS)" "Windows_NT"
$(MBED_DEVICE):
	@REM >nul
else
$(MBED_DEVICE):
	@#
endif
endif # ifeq "$(findstring $(MBED_DEVICE),$(DEVICES))"...
