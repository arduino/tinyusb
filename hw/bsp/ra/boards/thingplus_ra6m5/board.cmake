set(CMAKE_SYSTEM_PROCESSOR cortex-m33 CACHE INTERNAL "System Processor")
set(MCU_VARIANT ra6m5)

set(JLINK_DEVICE R7FA6M5AH)
set(DFU_UTIL_VID_PID 1b4f:0036)

set(LD_FILE_GNU ${CMAKE_CURRENT_LIST_DIR}/${BOARD}.ld)

# Device port default to PORT0 Fullspeed
if (NOT DEFINED PORT)
set(PORT 0)
endif()

function(update_board TARGET)
  target_compile_definitions(${TARGET} PUBLIC
    BOARD_TUD_RHPORT=${PORT}
    # port 0 is fullspeed
    BOARD_TUD_MAX_SPEED=$<IF:${PORT},OPT_MODE_HIGH_SPEED,OPT_MODE_FULL_SPEED>
    )
endfunction()
