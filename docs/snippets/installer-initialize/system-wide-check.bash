  bl64_lib_flag_is_enabled "$INST64_SYSTEM_WIDE" && bl64_msg_show_error 'system-wide installation not supported' &&
    return $BL64_LIB_ERROR_PARAMETER_INVALID
