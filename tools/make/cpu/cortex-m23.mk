ifeq ($(TOOLCHAIN),gcc)
  CFLAGS += \
    -mthumb \
    -mcpu=cortex-m23
    
else ifeq ($(TOOLCHAIN),iar)
  CFLAGS += --cpu cortex-m23 --fpu VFPv4
  ASFLAGS += --cpu cortex-m23 --fpu VFPv4
endif

FREERTOS_PORTABLE_SRC ?= $(FREERTOS_PORTABLE_PATH)/ARM_CM4F
