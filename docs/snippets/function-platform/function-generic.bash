# Snippet: select-platform-1.1.0

# X_STAND_ALONE_FUNCTIONS_X #
#######################################
# Selects platform ID
#
# * Platform ID format is defined by the package provider
#
# Arguments:
#   None. Parameters are imported from Globals
# Outputs:
#   Platform ID
# Returns:
#   0: selection completed ok
#   >0: unable to selection
#######################################
function inst64_X_APP_NAME_X_select_platform() {
  bl64_dbg_app_show_function
  if [[ "$INST64_X_APP_NAME_CAPS_X_METHOD" == 'X_METHOD_X' ]]; then
    if [[ -z "$INST64_X_APP_NAME_CAPS_X_PLATFORM" ]]; then
      if [[ "$BL64_OS_TYPE" == "$BL64_OS_TYPE_MACOS" && "$BL64_OS_MACHINE" == "$BL64_OS_MACHINE_ARM64" ]]; then
        INST64_X_APP_NAME_CAPS_X_PLATFORM='X_PLATFORM_TAG_X'
      elif [[ "$BL64_OS_TYPE" == "$BL64_OS_TYPE_LINUX" && "$BL64_OS_MACHINE" == "$BL64_OS_MACHINE_AMD64" ]]; then
        INST64_X_APP_NAME_CAPS_X_PLATFORM='X_PLATFORM_TAG_X'
      else
        bl64_msg_show_error "unsupported OS and Machine combination (OS_TYPE:${BL64_OS_TYPE} / MACHINE: ${BL64_OS_MACHINE})"
        return $BL64_LIB_ERROR_OS_INCOMPATIBLE
      fi
    fi
  fi
  [[ -z "$INST64_X_APP_NAME_CAPS_X_PLATFORM" ]] && bl64_msg_show_error 'unable to determine platform id' && return 1
  return 0
}
