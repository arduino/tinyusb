CPU_CORE = cortex-m33
MCU_VARIANT = ra6m5

LD_FILE = ${BOARD_PATH}/${BOARD}.ld

# Port 0 is fullspeed
PORT ?= 0

JLINK_DEVICE = R7FA6M5AH
DFU_UTIL_OPTION = -d 1b4f:0036 -a 0

flash: flash-dfu-util
