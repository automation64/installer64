# Snippet: select-platform-1.0.0

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
  # X_PLATFORM_SELECTION_PLACEHOLDER_X #
  [[ -z "$INST64_X_APP_NAME_CAPS_X_PLATFORM" ]] && bl64_msg_show_error 'unable to determine platform id' && return 1
  return 0
}

# X_INSTALL_PLACEHOLDER_X
  inst64_X_APP_NAME_X_select_platform &&
    inst64_X_APP_NAME_X_select_packages ||
    return $?
